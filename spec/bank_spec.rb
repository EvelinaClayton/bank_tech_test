require 'spec_helper'

RSpec.describe Bank do
  describe '#initialize' do
    it 'has a balance of 0.00' do
      expect(subject.balance).to eq 0.00
    end
  end

  describe '#deposit' do
    it 'adds amount to balance' do
      # deposit money
      subject.deposit(1000)
      # check the balance
      expect(subject.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'deducts amount from balance' do
      # deducts money
      subject.deposit(1000)
      subject.withdraw(500)
      # check current balance
      expect(subject.balance).to eq 500
    end
  end

  describe 'statement' do
    it 'shows a statement from the users actions' do
      subject.deposit(1000)
      subject.withdraw(500)
      
      # Title
      expect(subject.statement[0]).to eq(
        ['date', 'credit', 'debit', 'balance']
      )

      # Deposit:
      expect(subject.statement[1][0]).to be_an_instance_of(Time)
      expect(subject.statement[1][1]).to eq 1000.00
      expect(subject.statement[1][2]).to eq ''
      expect(subject.statement[1][3]).to eq 1000.00

      # Withdraw
      expect(subject.statement[2][0]).to be_an_instance_of(Time)
      expect(subject.statement[2][1]).to eq ''
      expect(subject.statement[2][2]).to eq 500.00
      expect(subject.statement[2][3]).to eq 500.00
    end
  end
end 