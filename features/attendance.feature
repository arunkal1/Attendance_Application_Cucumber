
Feature: Attendance

# Attendance Form
# Scenario: If I want to the check if I can correctly add attendance for a group
# Given I am on the Attendance form page
# When I pick a group
# And choose a valid date
# And add a type of Attendance and comment for each student in the list
# Then I should go back to the Homepage
#
# Scenario: I want to check if I'm not able to add attendance for a date before the group's given start date
# Given I am on the Attendance form page
# When I pick a group
# And choose an invalid date before the start date
# And click next
# Then I shouldn't be able to add attendance for that date
#
# Scenario: I want to check if I'm not able to add attendance for a date after the group's given end date
# Given I am on the Attendance form page
# When I pick a group
# And choose an invalid date after the end date
# And click next
# Then I shouldn't be able to add attendance for that date
#
# #
# Scenario: I am able to click on a group
#
#   Given I am on the Homepage
#   When I click on a group
#   Then I should be redirected to the individual page for that group
#
# Scenario: I am able to click on students name
#
#   Given I am on the groups individual page
#   When I click on a students name
#   Then I should go to that students profile page

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
And I should be able to see the colors set per day
And I should be able to view comments
And I should be able to remove comments
Then I should return to the home page

# Scenario: I should see a range of colours on the attendance table representing attendance factors
# Given I have been on the Homepage
# And I have chosen a group
# And I have chosen a student
# Then I should see a color for on time
# And I should see a colour for less than five minutes late
# And I should see a colour for more than five minutes late
# And I should see a colour for Authorised
# And I should see a colour for Unauthorised
