Feature: Enter a new transaction
  In order for the accounts to balance
  As an accounting clerk
  I want to enter transactions in groups
  of debits and credits that will net to zero

  Scenario: Balanced transaction
    Given sales/revenue, debtors/asset and gst/liability accounts
    When I create a balanced transaction
    Then I should see the correct balances in those accounts
