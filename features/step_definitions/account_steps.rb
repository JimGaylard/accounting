
Given(/^an "(.*?)" account$/) do |account_type|
  @account = Accounting::Account.new
  @account.account_type = account_type.to_sym
end


