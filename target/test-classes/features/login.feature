@loginScenarios
Feature: Login page tests

  Scenario: Verify user signs in
    Given  User signs in:
      | Enter Username | test@yahoo.com |
      | Enter Password | test123        |
    When User clicks on "Login" button
