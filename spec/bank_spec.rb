require 'bank'

RSpec.describe Bank do

  it "creates a bank class" do
    bank = Bank.new
    expect(bank).to be_truthy
  end
end 