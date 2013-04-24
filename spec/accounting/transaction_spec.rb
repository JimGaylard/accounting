require 'spec_helper'

module Accounting
  describe Transaction do
    before :each do
      @sales = Account.new(:revenue)
      @debtors = Account.new(:asset)
      @gst = Account.new(:liability)
    end

    it "should update account balances if it is balanced" do
      trans = Transaction.new
      trans.entries = {
        @sales =>  [:credit, 220.00],
        @debtors =>  [:debit, 200.00],
        @gst =>  [:debit, 20.00],
      }

      trans.save
      @sales.balance.should == 220.00
      @debtors.balance.should == 200.00
      @gst.balance.should == -20.00
    end

    it "should accept the transaction entries as an argument" do
      trans = Transaction.new({@sales => [:debit, 100.00], @debtors => [:credit, 100]})
      trans.save
      @sales.balance.should == -100.00
      @debtors.balance.should == -100.00
    end
  end
end
