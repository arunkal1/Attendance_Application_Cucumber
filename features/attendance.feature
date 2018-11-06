Feature: Group table
  as I user
  when I click on a group
  then I should be on the groups individual page

  Scenario: I am able to click on a group

    Given I am on the Homepage
    When I click on a group
    Then I should be redirected to the individual page for that group

  Scenario: I am able to click on students name

    Given I am on the groups individual page
    When I click on a students name
    Then I should go to that students profile page

  Scenario: The name of students should filter in assendening order

    Given I am inside of a group page
    When I click the arrow above the names that points up
    Then I should be able to view the table with students ordered in assendening order
