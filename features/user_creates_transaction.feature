Feature: user adds a transaction

  In order to create meaningful groups of debits and credits
  As an accounting clerk
  When I create a balanced (DR/CR) transaction
  The transaction should be recorded and the balances of the accounts updated

  Scenario: simple debit and credit
    Given accounts sales, debtors, gst with zero balance
    When I "credit" "sales" with $330
    And I "debit" "debtors" with $300
    And I "debit" "gst" with $30
    Then I should see a balance of -330 in "sales"
    And I should see a balance of 300 in "debtors"
    And I should see a balance of 30 in "gst"
