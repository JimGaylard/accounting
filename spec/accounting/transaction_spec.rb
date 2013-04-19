require 'spec_helper'

module Accounting
  describe Transaction do
    it "should update account balances if it is balanced" do
      sales = Account.new(:revenue)
      debtors = Account.new(:asset)
      gst = Account.new(:liability)

      trans = Transaction.new
      trans.entries = {
        sales =>  [:credit, 220.00],
        debtors =>  [:debit, 200.00],
        gst =>  [:debit, 20.00],
      }

      trans.save
      sales.balance.should == 220.00
      debtors.balance.should == 200.00
      gst.balance.should == -20.00
    end
  end
end
