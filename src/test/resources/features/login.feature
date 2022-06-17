Feature: Login page tests
  Scenario: Verify User signs in using credentials
    Given User opens Login Page
    Then  User signs in:
      | username= test@yahoo.com |
      | password = test123       |