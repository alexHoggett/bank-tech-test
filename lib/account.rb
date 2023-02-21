require 'date'
require_relative './transfer'

class Account
  def initialize(io=Kernel)
    @current_balance = 0
    @history = []
    @io = io
  end

  def deposit(amount, date=DateTime.now)
    self.make_transfer(amount, date)
    @current_balance = @current_balance + amount
  end

  def withdraw(amount, date=DateTime.now)
    self.make_transfer(-amount, date)
    @current_balance = @current_balance - amount
  end

  def print
    # prints the contents of the history array to the screen
    @io.puts "date || credit || debit || balance"
    
    @history.reverse_each do |transfer|
      @io.print "#{transfer.get_date} || "
      @io.print transfer.get_amount[0] == '-' ? 
        "|| #{transfer.get_amount[1..-1]} " :
        "#{transfer.get_amount} || "
      @io.puts "|| #{transfer.get_balance}"
    end
  end

  private

  def make_transfer(amount, date)
    transfer = Transfer.new(date, amount, @current_balance)
    @history << transfer
  end
end