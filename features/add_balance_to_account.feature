Feature: debit or credit an amount to an account

  In order to record transactions
  As a user of the software
  When I debit or credit an account
  The balance should increase or decrease,
  depending on the rules for that account_type

  Scenario Outline: debit an expense account
    Given a/an "<account_type>" account
    When I "<trans_type>" the account with $50
    Then I should see a balance of "<new_balance>"

    Scenarios: debits / credits
      | account_type | trans_type | new_balance |
      | :asset       | :debit     | 50          |
      | :asset       | :credit    | -50         |
      | :liability   | :debit     | -50         |
      | :liability   | :credit    | 50          |
      | :equity      | :debit     | -50         |
      | :equity      | :credit    | 50          |
      | :revenue     | :debit     | -50         |
      | :revenue     | :credit    | 50          |
      | :expense     | :debit     | 50          |
      | :expense     | :credit    | -50         |
