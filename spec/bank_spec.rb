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
      subject.withdraw(-500)
      # check current balance
      expect(subject.balance).to eq 500
    end
  end
end 