require 'pry'
module Accounting
  class Account
    attr_accessor :account_type, :balance

    def initialize(account_type, balance = 0)
      @account_type = account_type
      @balance = balance
    end

    def debit(amount)
      correct_treatment_for_acccount(amount)
    end

    def credit(amount)
      correct_treatment_for_acccount(-amount)
    end

    def correct_treatment_for_acccount(amount)
      case @account_type
      when :asset, :expense
        self.balance += amount
      when :liability, :equity, :revenue
        self.balance -= amount
      else
        raise "IncorrectAccountType!"
      end
    end
  end
end
