Feature: Modifying a Student

  # ================ Happy Path Start ================

  Scenario: I want to add a student
    Given I am on a page
    When I click on the add student link
    Then I should be taken the add student form

  Scenario: I want to edit a student
    Given I am on a student’s page
    When I click on the edit student button
    Then I should be taken the edit student form

  Scenario: I want to delete a student from the group
    Given I am on a student’s page
    When I click on the delete student button
    Then the student should be removed from the database

  # ================ Happy Path End ================
  # ================ Creating a new student ===============

  Scenario: I can input vaid details and a new active student is created
    Given I am on a new student page
    When I input a valid name
    And I select a group
    And I check the active group box
    And I click submit
    Then they are active
    And I am redirected to the student's page
    And a notice appears to advise the student has been created

  @input_name
  Scenario: I can input vaid details and a new inactive student is created
    Given I am on a new student page
    When I input a valid name
    And I select a group
    And I click submit
    Then they are inactive
    And I am redirected to the student's page
    And a notice appears to advise the student has been created
  # ================ Invalid Student ===============
  @invalid_student
  Scenario Outline: I can't input an invalid students name
  Given I am on a new student page
  When I input an invalid <name>
  And I click submit
  Then I should be presented with <error>

    Examples:
    | name | error |
    | @tom | Name cannot contain illegal characters |
    | B4kang | Name cannot contain numerical characters |
    | $arun | Name must be 4-12 characters |
    |  | Name Must Be Given |

  @testing
  Scenario: I can edit a student's details
    Given I am on a student’s edit page
    When I input a valid name
    And I select a group
    And I click submit
    Then I am redirected to the student's page
    And a notice appears to advise the student has been updated

  # ================ Invalid Student ===============
  Scenario Outline: I can edit a student's details
  Given I am on a student’s edit page
  When I input an invalid <name>
  Then I should be presented with <error>

    Examples:
    | name | error |
    | @tom | Name cannot contain illegal characters |
    | B4kang | Name cannot contain numerical characters |
    | $arun | Name must be 4-12 characters |
    |  | Name Must Be Given |
