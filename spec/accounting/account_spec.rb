require 'spec_helper'

module Accounting
  describe Account do
    let(:asset_acc) {Account.new(:asset)}
    let(:liability_acc) {Account.new(:liability)}
    let(:equity_acc) {Account.new(:equity)}
    let(:revenue_acc) {Account.new(:revenue)}
    let(:expense_acc) {Account.new(:expense)}


    it "should have an Account Type" do
      asset_acc.account_type = :asset
      asset_acc.account_type.should == :asset
    end

    it "should have a zero balance by default" do
      asset_acc.balance.should == 0
    end

    it "should increase the balance  of an asset account on debit" do
      asset_acc.debit(50)
      asset_acc.balance.should == 50
    end

    it "should decrease the balance of an asset account on credit" do
      asset_acc.credit(50)
      asset_acc.balance.should == -50
    end

    it "should decrease the balance of a liability account on debit" do
      liability_acc.debit(50)
      liability_acc.balance.should == -50
    end
  end
end
