require 'account'
require 'date'

describe Account do
  it 'adds a positive transaction to an accounts history' do
    io = double(:io)
    account = Account.new

    account.deposit(2000)
    current_date = DateTime.now

    formatted = "#{current_date.strftime("%d/%m/%Y")} || 2000.00 || || 2000.00"

    expect{ account.print }.to output(/#{formatted}/).to_stdout
  end
end