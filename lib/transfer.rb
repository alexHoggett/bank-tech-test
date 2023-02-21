class Transfer
  def initialize(date, amount, prev_balance)
    @date = date
    @amount = amount
    @balance = prev_balance + amount
  end

  def get_date
    @date.strftime('%d/%m/%Y')
  end

  def get_amount
    '%.2f' % @amount
  end

  def get_balance
    '%.2f' % @balance
  end
end