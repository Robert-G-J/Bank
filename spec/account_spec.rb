require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:transaction) { double(:transaction) }

  describe '#balance' do
    it 'has a zero balance' do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'increases balance' do
      expect { account.deposit(10) }.to change { account.balance }.by(10)
    end

    it 'makes a new Transaction' do
      allow(account).to receive(:deposit).with(10).and_return(transaction)
      expect(account.deposit(10)).to eq transaction
    end
  end

  describe '#withdraw' do
    it 'decreases balance' do
      account.deposit(10)
      expect { account.withdraw(10) }.to change { account.balance }.by(-10)
    end
  end

  describe '#statement' do
    it { is_expected.to respond_to(:statement) }

    it 'returns a single deposit transaction' do
      account.deposit(20)
      expect { account.statement }.to output("£20\n").to_stdout
    end
  end

  describe '#transactions' do
    it { is_expected.to respond_to :transactions }
  end
end
