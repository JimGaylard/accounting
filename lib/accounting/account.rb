require 'pry'
module Accounting
  class Account
    attr_accessor :account_type, :balance

    def initialize(account_type, balance = 0)
      @account_type = account_type
      @balance = balance
    end

    def debit(amount)
      binding.pry
      case @account_type
      when [:asset, :expense]
        self.balance += amount
      when [:liability, :equity, :revenue]
        self.balance -= amount
      end
    end

    def credit(amount)
      self.balance -= amount
    end

  end
end
