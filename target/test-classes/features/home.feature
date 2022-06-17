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

<<<<<<< HEAD
  Scenario: Verify all dashboards are present
    Then Verify the following dashboards are present:
=======
  @dashboardTest
  Scenario Outline: Verify all dashboards are displayed
    Then Verify the following "<dashboards>" are displayed:
    Examples:
      | dashboards  |
>>>>>>> master
      | All Topics  |
      | Coding      |
      | Soft skills |

  Scenario: Verify user can add a statement in Do's section
    And User clisks on "Add do " button
    Then Verify user see "Your Input..." field is displayed

  Scenario: Verify user can add a statement in Don't section
    And User clisks on "Add don't " button
    Then Verify user see "Your Input..." field is displayed

  Scenario: Verify user can add only letters and numbers in Do's section
    And User clisks on "Add do " button
    And User enters "" in input field
    And User clicks on "Enter" button
    Then Verify  user's statement was added

  Scenario: Verify user can add only letters and numbers in Dont's section
    And User clisks on "Add don't " button
    And User enters "" in input field
    And User clicks on "Enter" button
    Then Verify  user's statement was added