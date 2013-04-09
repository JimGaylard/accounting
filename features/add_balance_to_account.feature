Feature: debit or credit an amount to an account

  In order to record transactions
  As a user of the software
  When I debit or credit an account
  The balance should increase or decrease,
  depending on the rules for that account_type

  Scenario Outline: debit an expense account
    Given a/an <account_type> account
    When I <trans_type> the account with $50
    Then I should see a balance of <new_balance> in "account"

    Scenarios: debits / credits
      | account_type | trans_type | new_balance   |
      |  asset       |  debit     | 50.0          |
      |  asset       |  credit    | -50.0         |
      |  liability   |  debit     | -50.0         |
      |  liability   |  credit    | 50.0          |
      |  equity      |  debit     | -50.0         |
      |  equity      |  credit    | 50.0          |
      |  revenue     |  debit     | -50.0         |
      |  revenue     |  credit    | 50.0          |
      |  expense     |  debit     | 50.0          |
      |  expense     |  credit    | -50.0         |
