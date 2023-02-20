require 'account'

describe Account do
  xit 'prints in the correct format' do
    io = double(:io)
    account = Account.new(io)

    account.deposit(2000)
    accout.withdraw(500)

    expect(io).to recieve(:puts).with('date || credit || debit || balance')
  end
end