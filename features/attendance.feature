Feature: Attendance

Attendance Form
Scenario: If I want to the check if I can correctly add attendance for a group
Given I am on the Attendance form page
When I pick group "Eng-01"
And choose a valid date
And click next
And add a type of Attendance and comment for each student in the list
Then I should go back to the Homepage

Scenario: I want to check if I'm not able to add attendance for a date before the group's given start date
Given I am on the Attendance form page
When I pick group "Eng-01"
And choose an invalid date before the start date
And click next
Then I shouldn't be able to add attendance for date in "2003-08-29"

Scenario: I want to check if I'm not able to add attendance for a date after the group's given end date
Given I am on the Attendance form page
When I pick group "Eng-01"
And choose an invalid date after the end date
And click next
Then I shouldn't be able to add attendance for date in "2019-08-29"

Scenario: I want to make sure I can't add an attendance for an empty student
Given I am on the Attendance form page
When I pick group "Eng-11"
And choose a valid date
And click next
Then I shouldn't add attendance

Scenario: I want to check that I can't add attendance for a group without selecting the date
Given I am on the Attendance form page
When I pick group "Eng-01"
And give a blank input for the date
And click next
Then I shouldn't add attendance

# This scenario is ran after the first scenario, since otherwise there would be no attendance for the date inputted.
Scenario: I want to make sure I can't add an attendance for a date where attendance has already been added
Given I am on the Attendance form page
When I pick group "Eng-01"
And choose a valid date
And click next
Then I shouldn't add attendance

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

Scenario: If I check an individual page I should be able to view student weekly attendances
Given I am on the homepage
And I click onto a group
And I click on a specific student
Then I should see attendance form

Scenario: If I add an attendance to a user it should be seen within the attendance table.
Given I started on the homepage
And I click onto a chosen group
And I click on a student
And I should be able to see todays date
And I should be able to view comments
And I should be able to remove comments
Then I should return to the home page
