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

    expect{ account.print }.to output(title + line_1 + line_2 + line_3).to_stdout
  end

  it 'allows an optional date parameter' do
    account = Account.new

    account.deposit(1000, DateTime.new(2022, 2, 12))
    account.deposit(2000, DateTime.new(2022, 3, 12))
    account.withdraw(500, DateTime.new(2022, 6, 12))
    current_date = DateTime.now

    title = "date || credit || debit || balance\n"
    line_1 = "12/06/2022 || || 500.00 || 2500.00\n"
    line_2 = "12/03/2022 || 2000.00 || || 3000.00\n"
    line_3 = "12/02/2022 || 1000.00 || || 1000.00\n"

    expect{ account.print }.to output(title + line_1 + line_2 + line_3).to_stdout
  end
end