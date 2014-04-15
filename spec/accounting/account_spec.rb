require 'spec_helper'

module Accounting
  describe Account do
    let(:asset_acc) { DebitAccount.new }
    let(:liability_acc) { CreditAccount.new }
    let(:equity_acc) { CreditAccount.new }
    let(:revenue_acc) { CreditAccount.new }
    let(:expense_acc) { DebitAccount.new }

    it "should have a zero balance by default" do
      expect(asset_acc.balance).to eq(0)
    end

    context "debit transactions" do

      it "should increase the balance of an asset account" do
        asset_acc.debit(50)
        expect(asset_acc.balance).to eq(50)
      end

      it "should decrease the balance of a liability account" do
        liability_acc.debit(50)
        expect(liability_acc.balance).to eq(-50)
      end

      it "should decrease the balance of an equity account" do
        equity_acc.debit(50)
        expect(equity_acc.balance).to eq(-50)
      end
    end

    context "credit transactions" do

      it "should decrease the balance of an asset account on credit" do
        asset_acc.credit(50)
        expect(asset_acc.balance).to eq(-50)
      end
    end

      it "should increase the balance of an expense account" do
        expense_acc.credit(50)
        expect(expense_acc.balance).to eq(-50)
      end
    end
  end
