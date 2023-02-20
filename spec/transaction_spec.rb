require 'transaction'
require 'date'

describe Transaction do
  it 'returns the date in correct format' do
    date = DateTime.now
    transaction = Transaction.new(date, 2000, 0)
    expect(transaction.get_date).to eq(date.strftime('%d/%m/%Y'))
  end

  it 'returns the amount' do
    transaction = Transaction.new(DateTime.now, 2000, 0)
    expect(transaction.get_amount).to eq 2000
  end

  it 'returns the balance after that transaction' do
    transaction = Transaction.new(DateTime.now, 2000, 500)
    expect(transaction.get_balance).to eq 2500
  end


  it 'returns the absolute amount of a transaction and takes money away from the balance' do
    transaction = Transaction.new(DateTime.now, -1000, 3000)
    expect(transaction.get_amount).to eq 1000
    expect(transaction.get_balance).to eq 2000
  end
end