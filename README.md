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
3.0.0 :001 > account.deposit(1000)
3.0.0 :001 > account.deposit(2000)
3.0.0 :001 > account.withdraw(500)
3.0.0 :001 > account.print
```

This will print:

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Run Tests

```bash
# at the root of the project
rspec
```
