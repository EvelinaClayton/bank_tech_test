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
end 