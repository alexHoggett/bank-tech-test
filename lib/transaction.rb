class Transaction
  def initialize(date, amount, prev_balance)
    @date = date
    @amount = amount
    @balance = prev_balance + amount
  end

  def get_date
    @date.strftime('%d/%m/%Y')
  end

  def get_amount
    @amount.abs
  end

  def get_balance
    @balance
  end
end