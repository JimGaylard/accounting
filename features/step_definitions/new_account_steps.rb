Given(/^I have created an account of type (\w+)$/) do |account_type|
  step "I start a new session"
  enter "new Account"
  enter "MyAccount"
  enter account_type
end

Given(/^I am at the "(.*?)" prompt$/) do |prompt|
  step "I start a new session"
end

When(/^I enter "(.*?)"$/) do |command|
  @session.execute(command)
end

Then(/^I should see a balance of (-*\d+\.\d\d)$/) do |new_balance|
  
end

def enter(command)
  @session.execute(command)
end
