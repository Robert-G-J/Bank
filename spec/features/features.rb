require 'account'

describe 'Feature Tests: ' do
  account = Account.new

  describe 'Outputs a statement' do
    it 'with amount' do
      account.deposit(10)
      expect { account.statement }.to output("£10\n").to_stdout
    end

    it 'with date' do
      account.deposit(10)
      expect { account.statement }.to output('12-06-2017').to_stdout
    end
  end
end
