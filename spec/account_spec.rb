require 'account'

describe Account do
  subject(:account){ described_class.new }

  describe "#balance" do
    it "has a zero balance" do
      expect(account.balance).to eq(0)
    end
  end

  describe "#deposit" do
    it "increases balance" do
      expect{ account.deposit(10) }.to change{ account.balance }.by(10)
    end
  end

  describe "#withdraw" do
    it "decreases balance" do
      expect{ account.withdraw(10) }.to change{ account.balance }.by(-10)
    end
  end
end
