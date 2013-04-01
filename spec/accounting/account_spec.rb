require 'spec_helper'

module Accounting
  describe Account do
    it "should have an Account Type" do
      account = Account.new(:asset)
      account.account_type = :asset
      account.account_type.should == :asset
    end
  end
end
