Feature: Soft Skill page tests
  Background: Sign in
    Given User signs in:
      | username= test@yahoo.com |
      | password = test123       |
   When opens "Soft Skills" page

  Scenario: Verify user can add question
    Then Verify "Enter new question" button is enabled

  Scenario: Verify user can only add letter, number, and special characters
    And User clicks on "Enter new question" button
    And User enters "abc123@#$"
    And User clicks on "Enter" button
    Then Verify message "abc123@#$" was added


  Scenario: Verify user can edit question
    Then User clicks on "Enter new question" button
    And User enters "abc123@#$"
    And User clicks on "Enter" button
    Then Verify edit button is enabled

  Scenario: Verify user can delete question
    Then User clicks on "Enter new question" button
    And User enters "abc123@#$"
    And User clicks on "Enter" button
    Then Verify delete button is enabled