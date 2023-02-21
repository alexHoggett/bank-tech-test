require 'transfer'
require 'date'

describe Transfer do
  it 'returns the date in correct format' do
    date = DateTime.now
    transfer = Transfer.new(date, 2000, 0)
    expect(transfer.get_date).to eq(date.strftime('%d/%m/%Y'))
  end

  it 'returns the amount' do
    transfer = Transfer.new(DateTime.now, 2000, 0)
    expect(transfer.get_amount).to eq "2000.00"
  end

  it 'returns the balance after that transfer' do
    transfer = Transfer.new(DateTime.now, 2000, 500)
    expect(transfer.get_balance).to eq "2500.00"
  end


  it 'takes money away from the balance' do
    transfer = Transfer.new(DateTime.now, -1000, 3000)
    expect(transfer.get_amount).to eq "-1000.00"
    expect(transfer.get_balance).to eq "2000.00"
  end

  it 'returns with 2 decimal places' do
    transfer = Transfer.new(DateTime.now, 999.99, 300)
    expect(transfer.get_amount).to eq "999.99"
    expect(transfer.get_balance).to eq "1299.99"
  end
end