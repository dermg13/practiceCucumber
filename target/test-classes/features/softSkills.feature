Feature: Soft Skill page tests

  Scenario: Verify user can add question
    Given User signs in:
      | username= test@yahoo.com |
      | password = test123       |
    When User opens "Soft Skills" page
    Then Verify "Enter new question" button is enabled

  Scenario: Verify user can only add letter, number, and special characters
    Given User signs in:
      | username= test@yahoo.com |
      | password = test123       |
    When User opens "Soft Skills" page
    Then User clicks on "Enter new question" button
    And User enters question using only letters, numbers, and special characters

  Scenario: Verify user can edit question
    Given User signs in:
      | username= test@yahoo.com |
      | password = test123       |
    When User opens "Soft Skills" page
    Then User clicks on "Enter new question" button
    And User enters question using only letters, numbers, and special characters
    Then Verify edit button is enabled

  Scenario: Verify user can delete question
    Given User signs in:
      | username= test@yahoo.com |
      | password = test123       |
    When User opens "Soft Skills" page
    Then User clicks on "Enter new question" button
    And User enters question using only letters, numbers, and special characters
    Then Verify delete button is enabled