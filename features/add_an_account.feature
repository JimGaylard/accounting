@wip
Feature: Accounts clerk adds a new account
  As an accounts clerk (AC)
  I want to create accounts
  In order to group transaction amounts and
    comply with accounting standards

  Scenario: An AC tries to create a new account
    Given I start a new session
    When I enter "new Account"
    Then I should see "Enter the new Account name: "

  Scenario: An AC creates a correct account
    Given I am at the "New Account" prompt
    When I enter "Debtors"
    And I enter "Revenue"
    Then I should see "New Account created: Debtors - Revenue"

  Scenario: An AC creates an account with invalid type
    Given I am at the "New Account" prompt
    When I enter "Debtors"
    And I enter "lollypop"
    Then I should see "Invalid Account type, please enter a valid type (asset, liability, equity, revenue, expense)"
