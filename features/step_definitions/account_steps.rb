Given(/^a\/an (.*?) account$/) do |account_type|
  @account = Accounting::Account.new(account_type.to_sym)
  p @account
end

When(/^I (.*?) the account with \$(\d+)$/) do |trans_type, amount|
  puts @account.send(trans_type, amount.to_f)
end

Then(/^I should see a balance of (-*\d+.\d\d)$/) do |new_balance|
  @account.balance.should == new_balance.to_f
end
