Feature: An accounts clerk records a transaction against a company 
  In order to track financial details against entities, e.g. customers, suppliers
  As an accounts clerk
  I want to be able to record company details

  Scenario: A user records a transaction against a debtor
    Given a balanced transaction
    When I assign $100.00 to "Company A" as the debtor
    Then I should see a balance of $100 against "Company A"
