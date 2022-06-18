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

  @dashboardTest
  Scenario Outline: Verify all dashboards are displayed
    Then Verify the following "<dashboards>" are displayed:
    Examples:
      | dashboards  |
      | All Topics  |
      | Coding      |
<<<<<<< HEAD
      | Soft skills |
=======
      | Soft Skill |
>>>>>>> d8e16c8d6ba52b25fb7c5ff1f3e8e0e5fb7dbfdb

  Scenario: Verify user can add a statement in Do's section
    When User clicks on "Add do " button
    And User enters "Team4 Do's testing" in input field
    And User clicks on "Enter" button
    Then Verify user see "Team4 Do's testing" field is displayed
@123
  Scenario: Verify user can add a statement in Don't section
    When User clicks on Add don't button
    And User enters "Team4 Dont's testing" in input field
    And User clicks on "Enter" button
    Then Verify user see "Team4 Dont's testing" field is displayed



