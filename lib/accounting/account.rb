module Accounting
  class Account
    attr_accessor :account_type

    def initialize(account_type)
      @account_type = account_type
    end
  end
end
