Given(/^I am not yet using the system$/) do
end

When(/^I start a new session$/) do
  @session = Accounting::Session.new(output)
  @session.start
end

Then(/^I should see "(.*?)"$/) do |message|
  output.messages.should include(message)
end

class Output
  def messages
    @messages||= []
  end

  def puts(message)
    messages << message
  end

end

def output
  @output ||= Output.new
end
