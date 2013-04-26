Given(/^a balanced transaction$/) do
  @sales = Accounting::Account.new(:revenue)
  @debtors = Accounting::Account.new(:asset)
  @trans = Accounting::Transaction.new({
    @sales => [:credit, 100.00],
    @debtors => [:debit, 100.00]
  })
end

When(/^I assign \$(\d+.\d\d) to (.+?) as the debtor$/) do |amount, debtor|
  @trans.entity = [:debtor, "Company A"]
end
