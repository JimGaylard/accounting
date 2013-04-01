
Given(/^a\/an "(.*?)" account$/) do |account_type|
  @account = Accounting::Account.new(account_type)
  @account.account_type = account_type.to_sym
end

When(/^I "(.*?)" the account with \$(\d+)$/) do |trans_type, amount|
  @account.send(trans_type, amount)
end

Then(/^I should see a balance of "(.*?)"$/) do |new_balance|
  @account.balance.should == new_balance
end
