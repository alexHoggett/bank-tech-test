require 'date'
require_relative './transaction'

class Account
  def initialize(io=Kernel)
    @current_balance = 0
    @history = []
    @io = io
  end

  def deposit(amount)
    # add to the history array
    transaction = Transaction.new(DateTime.now, amount, @current_balance)
    @history << transaction
    @current_balance = @current_balance + amount
  end

  def withdraw(amount)
    # add to the history array
  end

  def print
    # prints the contents of the history array to the screen
    @io.puts "date || credit || debit || balance"
    
    @history.reverse_each do |transaction|
      @io.print "#{transaction.get_date} || "
      @io.print transaction.get_amount[0] == '-' ? 
        "|| #{transaction.get_amount[1..-1]} " :
        "#{transaction.get_amount} || "
      
      @io.puts "|| #{transaction.get_balance}"
    end
  end
end