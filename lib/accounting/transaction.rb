require 'pry'
module Accounting
  class Transaction
    attr_accessor :entries

    def initialize(entries={})
      @entries = entries
    end

    def save
      debits = 0
      credits = 0
      self.entries.each do |entry|
        debits+= entry[1][1] if entry[1][0] == :debit
        credits+= entry[1][1] if entry[1][0] == :credit
      end

      if debits == credits
        self.entries.each do |entry|
          entry[0].send(entry[1][0].to_sym, entry[1][1])
        end
      end
    end
  end
end
