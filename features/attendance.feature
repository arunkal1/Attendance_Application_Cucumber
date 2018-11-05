Feature: Attendance Form

Scenario: If I want to the check if I can correctly add attendance for a group
Given I am on the Attendance form page
When I pick a group
And choose a valid date
And add a type of Attendance and comment for each student in the list
Then I should go back to the Homepage

Scenario: I want to check if I'm not able to add attendance for a date before the group's given start date
Given I am on the Attendance form page
When I pick a group
And choose an invalid date before the start date
And click next
Then I shouldn't be able to add attendance for that date

# Scenario: I want to check if I'm not able to add attendance for a date after the group's given end date
# Given I am on the Attendance form page
# When I pick a group
# And choose an invalid date before the start date
# And click next
# Then I shouldn't be able to add attendance for that date
