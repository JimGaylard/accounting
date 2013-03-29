module Accounting
  class Account
    attr_writer :type
    def initialize(type)
      @type = type
    end
  end
end
