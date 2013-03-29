Feature: add balance to an account

  In order to record transactions
  As a user of the software
  When I debit or credit an account
  The balance should increase or decrease,
  depending on the rules for that account_type

  Scenario: debit an expense account
    Given an "expense" account
    When I debit the account with "50"
    Then I should see a balance of "50"
