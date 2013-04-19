Given(/^sales\/revenue, debtors\/asset and gst\/liability accounts$/) do
  @sales = Accounting::Account.new(:revenue)
  @debtors = Accounting::Account.new(:asset)
  @gst = Accounting::Account.new(:liability)
end

When(/^I create a balanced transaction$/) do
  trans = Accounting::Transaction.new
  trans.entries = {:sales => [:credit, 220.00],
                   :debtors => [:debit, 200.00],
                   :gst => [:debit, 20.00]}
end

Then(/^I should see the correct balances in those accounts$/) do
  @sales.balance.should == 220.00
  @debtors.balance.should == 200.00
  @gst.balance.should == -20.00
end
