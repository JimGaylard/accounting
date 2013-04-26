require 'spec_helper'

module Accounting
  describe Session do
    describe "#start" do
      it "sends a welcome message" do
        output = double('output').as_null_object
        session = Session.new(output)

        output.should_receive(:puts).with("Welcome to Accounting")
        session.start
      end

      it "prompts for a command" do
        output = double('output').as_null_object
        session = Session.new(output)

        output.should_receive(:puts).with("Enter command or type help >>")
        session.start
      end
    end
  end
end
