Feature: debit or credit an amount to an account

  In order to record transactions
  As a user of the software
  When I debit or credit an account
  The balance should increase or decrease,
  depending on the rules for that account_type

  Scenario Outline: debit an expense account
    Given I have created an account of type <account_type>
    And I enter "new Transaction"
    When I enter "<trans_type>"
    And I enter "50"
    Then I should see a balance of <new_balance>

    Scenarios: debits / credits
      | account_type | trans_type | new_balance    |
      |  asset       |  debit     | 50.00          |
      |  asset       |  credit    | -50.00         |
      |  liability   |  debit     | -50.00         |
      |  liability   |  credit    | 50.00          |
      |  equity      |  debit     | -50.00         |
      |  equity      |  credit    | 50.00          |
      |  revenue     |  debit     | -50.00         |
      |  revenue     |  credit    | 50.00          |
      |  expense     |  debit     | 50.00          |
      |  expense     |  credit    | -50.00         |
