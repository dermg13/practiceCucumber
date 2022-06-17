@homeScenarios
Feature: Home page related scenarios

  Background: Sign in
    Given User signs in:
      | username= test@yahoo.com |
      | password = test123       |

  Scenario: Verify title of page
    Then Verify "tite of the page is "Interview App"

  Scenario: Verify "Sign out" button
    Then Verify "Sign out" button is displayed

  Scenario: Verify "Manage Access" button
    Then Verify "Manage Access" button is not displayed

  Scenario: Verify all dashboards are present
    Then Verify the following dashboards are present:
      | All Topics  |
      | Coding      |
      | Soft Skills |

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