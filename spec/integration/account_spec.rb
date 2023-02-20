require 'account'
require 'date'

describe Account do
  it 'adds a positive transaction to an accounts history' do
    account = Account.new

    account.deposit(2000)
    current_date = DateTime.now

    title = "date || credit || debit || balance\n"
    formatted = "#{current_date.strftime("%d/%m/%Y")} || 2000.00 || || 2000.00\n"

    expect{ account.print }.to output(title + formatted).to_stdout
  end

  it 'adds a negative transaction to an accounts history' do
    account = Account.new

    account.deposit(-2000)
    current_date = DateTime.now

    title = "date || credit || debit || balance\n"
    formatted = "#{current_date.strftime("%d/%m/%Y")} || || 2000.00 || -2000.00\n"

    expect{ account.print }.to output(title + formatted).to_stdout
  end

  it 'adds computes several transactions and lists them in reverse chronological order' do
    account = Account.new

    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    current_date = DateTime.now

    title = "date || credit || debit || balance\n"
    line_1 = "#{current_date.strftime("%d/%m/%Y")} || || 500.00 || 2500.00\n"
    line_2 = "#{current_date.strftime("%d/%m/%Y")} || 2000.00 || || 3000.00\n"
    line_3 = "#{current_date.strftime("%d/%m/%Y")} || 1000.00 || || 1000.00\n"

    expect{ account.print }.to output(/#{title + line_1 + line_2 + line_3}}/).to_stdout
  end
end