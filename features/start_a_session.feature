Feature: Accounts Clerk (AC) starts a session
  As an accounts clerk
  I want to start a session
  So that I can manage my accounting requirements

  Scenario: User starts a session and sees welcome message
    Given I am not yet using the system
    When I start a new session
    Then I should see "Welcome to Accounting"
    And I should see "Enter command or type help >>"
