Feature: Individual Attendance

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
