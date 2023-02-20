# Bank Tech Test

## Installation

```bash
gem install bundler
bundle install
```

## To run

As per the specifcation, the application is intended to be interacted with through the IRB.

```bash
# in the root of the project
irb -r ./lib/account.rb
```

```irb
3.0.0 :001 > account = Account.new
3.0.0 :001 > account.deposit(1000)
3.0.0 :001 > account.deposit(2000)
3.0.0 :001 > account.withdraw(500)
3.0.0 :001 > account.print
```

## Run Tests

```bash
# at the root of the project
rspec
```
