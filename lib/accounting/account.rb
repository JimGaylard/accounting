require 'pry'
module Accounting
  class Account
    attr_accessor :account_type, :balance

    def initialize(account_type, balance = 0)
      @account_type = account_type
      @balance = balance
    end

    def debit(amount)
      case @account_type
      when :asset, :expense
        self.balance += amount
      when :liability, :equity, :revenue
        self.balance -= amount
      else
        self.balance = 1
      end
    end

    def credit(amount)
      case @account_type
      when :asset, :expense
        self.balance -= amount
      when :liability, :equity, :revenue
        self.balance += amount
      else
        self.balance = 1
      end
    end

  end
end
