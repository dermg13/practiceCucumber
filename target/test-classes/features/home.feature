@homeScenarios
Feature: Home page related scenarios

  Scenario: Verify title of page
    Given  User signs in:
      | Enter Username | test@yahoo.com |
      | Enter Password | test123        |
    When User clicks on "Login" button
    Then Verify title of page is "Interview App"

  Scenario: Verify "Sign out" button
    Given  User signs in:
      | Enter Username | test@yahoo.com |
      | Enter Password | test123        |
    Then Verify "Sign out" button is displayed

  Scenario: Verify "Manage Access" button
    Given  User signs in:
      | Enter Username | test@yahoo.com |
      | Enter Password | test123        |
    Then Verify "Manage Access" button is not displayed

  Scenario: Verify all dashboards are present
    Given  User signs in:
      | Enter Username | test@yahoo.com |
      | Enter Password | test123        |
    Then Verify the following dashboards are present:
      | All Topics  |
      | Coding      |
      | Soft Skille |

    Scenario: Verify user can add a statement in Do's section
      Given  User signs in:
        | Enter Username | test@yahoo.com |
        | Enter Password | test123        |
      Then Verify user can add a statement

  Scenario: Verify user can add a statement in Don't section
    Given  User signs in:
      | Enter Username | test@yahoo.com |
      | Enter Password | test123        |
    Then Verify user can add a statement

    Scenario: Verify user can add only letters and numbers
      Given  User signs in:
        | Enter Username | test@yahoo.com |
        | Enter Password | test123        |
      Then Verify user can add only enter letters and numbers