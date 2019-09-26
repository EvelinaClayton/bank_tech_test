## Bank Tech Test

# Specification and Requirements
* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).
# Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## To access the project

# To Install:
1. Fork this repo and clone to your local machine
2. Run 'gem install bundle'
3. To check specifics of the project, run 'irb'
  - then 'require './lib/bank.rb'
  - 'bank = Bank.new'
You should now be able to use the application to access: deposit, withdraw.

# To check the tests:
Assuming that the project has now been fully forked and cloned to your local machine.

1. In your command line run 'gem install bundle'
2. Run 'rspec'
3. To check formatting, please run 'rubocop'

## Map of the project

| Bank            |             |
|-----------------|-------------|
| deposit         | balance     |
| withdraw        | balance     |
| print_statement | statement   |

| Statement_History |          |
|-------------------|----------|
| new               |          |
| print_statements  |          |