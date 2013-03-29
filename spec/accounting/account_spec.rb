require 'spec_helper'

module Accounting
  describe Account do
    it "should have an Account Type" do
      account = Account.new(:asset)
      account.type.should == :asset
    end
  end
end
