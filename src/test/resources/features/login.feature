Feature: Login page tests

  Scenario Outline: Verify User signs in using following credentials
    Given  User enters "<email>" , "<password>"
    Then User clicks on "Login" button
    Then Verify "tite of the page is "Interview App"
    Examples:
      | email          | password |
      | test@yahoo.com | test123  |