class Account

  attr_reader :account_balance

  def initialize
    @account_balance = 0
  end

  def balance
    account_balance
  end

  def deposit(amount)
    self.account_balance += amount
  end

  def withdraw(amount)
    self.account_balance -= amount
  end

  private

  attr_writer :account_balance

end
