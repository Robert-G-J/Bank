require_relative 'transaction'

class Account

  attr_reader :account_balance, :transactions

  def initialize
    @account_balance = 0
    @transactions = []
  end

  def balance
    calculate_balance
  end

  def deposit(amount)
    transactions << Transaction.new(amount)
  end

  def withdraw(amount)
    transactions << Transaction.new(-amount)
  end

  def statement
    puts "£#{transactions.pop.value}"
  end

  private

  attr_writer :account_balance, :transactions

  def calculate_balance
    balance = 0
    transactions.each { |transaction| balance += transaction.value }
    balance
  end

end
