Feature: Student's Application

  # ================ Happy Path Start ================
  Scenario: I want to view each student
    Given I am on the students page OR a groups page
    When I click on a student
    Then I should be taken to the individual student page
    And I should be presented with information on the student

  Scenario: I want to view a list of students
    Given I am on a page
    When I click the students link
    Then I should be taken to the students page
    And I should see a list of students
  # ================ Happy Path End ================
