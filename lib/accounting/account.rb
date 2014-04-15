module Accounting
  class Account
    attr_accessor :balance

    def initialize(balance)
      @balance = balance
    end

    def debit(amount)
      raise "NotImplementedError"
    end

    def credit(amount)
      raise "NotImplementedError"
    end

    #def correct_treatment_for_acccount(amount)
    #  case @account_type
    #  when :asset, :expense
    #    self.balance += amount
    #  when :liability, :equity, :revenue
    #    self.balance -= amount
    #  else
    #    raise "IncorrectAccountType!"
    #  end
    #end
  end

  class DebitAccount < Account
    def initialize(balance: 0)
      super(balance)
    end

    def debit amount
      @balance += amount
    end

    def credit amount
      @balance -= amount
    end
  end

  class CreditAccount < Account
    def initialize(balance: 0)
      super(balance)
    end

    def debit amount
      @balance -= amount
    end

    def credit amount
      @balance += amount
    end
  end
end
