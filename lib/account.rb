require 'date'

class Account
  def initialize(io)
    @current_balance = 0
    @history = []
    @io = io
  end

  def deposit(amount)
    # add to the history array
  end

  def withdraw(amount)
    # add to the history array
  end

  def print
    # prints the contents of the history array to the screen

  end
end