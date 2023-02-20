# Bank Tech Test

- Can make deposits and withdrawals

- a withdrawal takes money away from their account, a deposit adds to the account

- Account balance will be to 2 decimal places

- Date will be in dd/mm/yyyy

- Transactions shown in reverse chronological order

- Starts with 0 in the bank

## CLASSES

```ruby
class Account
  def constructor
    @current_balance = 0
    @history = []
  end

  def deposit(amount)
    # add to the history array
  end

  def withdrawal(amount)
    # add to the history array
  end

  def print
    # prints the contents of the history array to the screen
  end

  # POSSIBLE

  private

  def make_transaction(amount)
    # make a hash and push it to the history array
  end

end

class Transaction
  def constructor(date, amount, prev_balance)
    @date = date
    @amount = amount
    @balance = prev_balance + balance
  end

  def get_date
    @date
  end

  def get_amount
    @amount
  end

  def get_balance
    @balance
  end
end
```

## Testing

```ruby

# Unit tests

describe 'Transaction class' do
  it 'returns the date' do
  end

  it 'returns the amount' do
  end

  it 'returns the balance after that transaction' do
  end
end

describe 'Account class' do
  it 'initialises with 0 balance' do
  end

  it 'can deposit an amount' do
  end

  it 'can withdraw an amount' do
  end

  describe 'Integration' do
    it 'returns the correct output, after several transactions' do
    end
  end
end
```
