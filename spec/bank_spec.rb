require 'spec_helper'

RSpec.describe Bank do
  describe '#initialize' do
    it 'has a balance of 0.00' do
      expect(subject.balance).to eq 0.00
    end
  end
end 