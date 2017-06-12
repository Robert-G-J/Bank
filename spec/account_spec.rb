require 'account'

describe Account do
  subject(:account){ described_class.new }

  describe "#balance" do
    it "has a zero balance" do
      expect(account.balance).to eq(0)
    end
    
  end
end
