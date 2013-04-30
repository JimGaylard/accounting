require 'spec_helper'

module Accounting
  describe Session, :focus => true do
    let(:output) { double('output').as_null_object }
    let(:session) { Session.new(output) }

    describe "#start" do
      it "sends a welcome message" do
        output.should_receive(:puts).with("Welcome to Accounting")
        session.start
      end

      it "prompts for a command" do
        output.should_receive(:puts).with("Enter command or type help >>")
        session.start
      end
    end

    describe "#execute" do
      it "performs the given command" do
        output.should_receive(:puts).with("Enter the new Account name: ")
        session.execute("new Account")
      end

      it "creates a new account" do
        session.execute("new Account")
        session.execute("Debtors")
        session.execute("asset")
        Account.count.should_increase_by(1)
      end
    end
  end
end
