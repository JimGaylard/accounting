Given(/^accounts sales, debtors, gst with zero balance$/) do
  @accounts = {}
  @accounts[:sales] = Accounting::Account.new(:sales)
  @accounts[:debtors] = Accounting::Account.new(:asset)
  @accounts[:gst] = Accounting::Account.new(:liability)
end

When(/^I "(.*?)" "(.*?)" with \$(\d+)$/) do |trans_type, account, amount|
  @accounts[account.to_sym].send(trans_type, amount.to_f)
end

