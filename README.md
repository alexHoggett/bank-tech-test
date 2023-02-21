# Bank Tech Test

You will need to have ruby installed.

## Installation

```bash
# get you the latest Ruby version
rvm get stable
rvm use ruby --latest --install --default
gem install bundler

# install the gems
bundle install
```

## To run

As per the specifcation, the application is intended to be interacted with through the IRB.

```bash
# in the root of the project
irb -r ./lib/account.rb
```

This will load the account class as a dependency and open the irb, where you can interact with it's public methods and test its output.

An example:

```irb
3.0.0 :001 > account = Account.new
3.0.0 :001 > account.deposit(2000, DateTime.new(2022, 3, 2))
3.0.0 :001 > account.deposit(200)
3.0.0 :001 > account.withdraw(100)
3.0.0 :001 > account.print
```

You can optionally provide a parameter for the date of the transfer, it will default to the current date.

This will print:

```
date || credit || debit || balance
21/02/2023 || || 100.00 || 2100.00                   
21/02/2023 || 200.00 || || 2200.00                   
02/03/2022 || 2000.00 || || 2000.00 
```

## Run Tests

```bash
# at the root of the project
rspec
```
