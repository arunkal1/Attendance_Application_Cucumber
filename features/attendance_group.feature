Feature: Groups resource

  Scenario: If I'm on the groups page, I should be able to see the groups
    Given I'm on the homepage
    Then I should be able to see the groups

  Scenario: I should be able to view individual groups
    Given I'm on the homepage
    When I click on an individual group
    Then I should be redirected to that group's page

  @edit_group
  Scenario: Inverting the active status
    Given I'm editting a group
    When I press active
    And I press update
    Then It should invert the active status

  @edit_group
  Scenario: Updating the group without changing anything
    Given I'm editting a group
    When I press update
    Then nothing will be updated

  Scenario: Changing a field
    Given I'm editting a group
    When I make a change to a field
    Then the group should be updated
    And a success message displayed

  Scenario: Navigating to the form
    Given I'm on the homepage
    When I click add new group
    Then I should be redirected to the add new group form

  Scenario: Adding a group with no inputs
    Given I'm on the add new group form
    When I press the add new group form
    Then five errors to fix message should be displayed

  Scenario: Adding a group with valid inputs and not touching active
    Given I'm on the add new group from
    When I add a name to the name field
    And add a stream to the stream field
    And I add a valid start date
    And a valid end date
    Then the group should be created
    And a success message displayed

  Scenario: Adding a group with valid inputs and setting the group as active
    Given I'm on the add new group from
    When I add a name to the name field
    And add a stream to the stream field
    And I add a valid start date
    And a valid end date
    And set the group as active
    Then the group should be created
    And a success message displayed
    And the group should be shown as active on the home page

  Scenario: Deleting an individual group
    Given that I am viewing an individual group
    When I click delete group
    Then that group will be deleted
    And will no longer be visible on the groups page

  Scenario: status, id and name
    Given I'm on the homepage
    When I click the appropriate button to arrange the groups by either active status or id or name
    Then the students should be arranged correctly by the active status or id or name

  Scenario: There are students
    Given I am on an individual group page
    When There are students in the group
    Then I should be able to see the students associated with that group

  Scenario: There are no students
    Given I am on an individual group page
    When There are no students in the group
    Then the no date error should be displayed
