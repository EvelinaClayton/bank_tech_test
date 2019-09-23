require 'transaction'

describe Transaction do
  it "a user can make a deposit" do
    transaction = Transaction.new
    expect(transaction.deposit).to be_truthy
  end
end 