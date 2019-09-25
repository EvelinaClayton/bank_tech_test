require 'time'

class Bank
  attr_reader :balance, :statement

  def initialize
    @balance = 0.00
    @statement = [
      ['date', 'credit', 'debit', 'balance']
    ]
  end

  def deposit(amount)
    @balance += amount.to_f
    @statement << [
      Time.now,
      amount.to_f,
      '',
      balance
    ]
  end

  def withdraw(amount)
    @balance -= amount.to_f
    @statement << [
      Time.now,
      amount.to_f,
      '',
      balance
    ]
  end
end