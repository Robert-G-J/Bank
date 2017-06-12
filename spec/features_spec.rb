require 'account'

describe 'Feature Tests: ' do
  account = Account.new

  describe 'Outputs a statement' do
    it 'with amount' do
      account.deposit(10)
      expect { account.statement }.to output("£10\n").to_stdout
    end
  end
end
