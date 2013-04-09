require 'spec_helper'

describe Accounting::Transaction do
  its "debits and credits should net to zero" do
    trans_hash = {
      "sales" => [:credit, 330.00],
      "debtors" => [:debit, 300.00],
      "gst" => [:debit, 30.00]
    }
    trans = Accounting::Transaction.new(trans_hash)
    trans.should be_valid

  end
end
