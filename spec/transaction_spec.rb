require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new('12-06-2017', 10) }

  describe '#requested_on' do
    it 'has a date attribute' do
      expect(transaction.requested_on).to eq('12-06-2017')
    end
  end

  describe '#value' do
    it 'has a value attribute' do
      expect(transaction.value).to eq(10)
    end
  end
end
