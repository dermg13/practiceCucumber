@homeScenarios
Feature: Home page related scenarios
  Background: Sign in
    Given  User signs in:
      | Enter Username | test@yahoo.com |
      | Enter Password | test123        |
    When User clicks on "Login" button

  Scenario: Verify title of page
    Then Verify title of page is "Interview App"

  Scenario: Verify "Sign out" button
    Then Verify "Sign out" button is displayed

  Scenario: Verify "Manage Access" button is not displayed
    Then Verify "Manage Access" button is not displayed

  Scenario: Verify all dashboards are present
    Then Verify the following dashboards are present:
      | All Topics  |
      | Coding      |
      | Soft Skill |

  Scenario: Verify user can add a statement in Do's section
    When User clicks on "Add do " button
    And User enters "Team4 Do's testing" in input field
    And User clicks on "Enter" button
    Then Verify user see "Team4 Do's testing" field is displayed

  Scenario: Verify user can add a statement in Don't section
    When User clicks on "Add don't " button
    And User enters "Team4 Dont's testing" in input field
    And User clicks on "Enter" button
    Then Verify user see "Team4 Dont's testing" field is displayed



