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

  xit 'returns the balance after that transaction' do
  end
end