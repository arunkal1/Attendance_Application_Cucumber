Feature: Student's Application

  # ================ Happy Path Start ================
  @test
  Scenario: I want to view each student
    Given I am on the students page OR a groups page
    When I click on a student
    Then I should be taken to the individual student page
    And I should be able to see information on the student

  Scenario: I want to view a list of students
    Given I am on a page
    When I click the students link
    Then I should be taken to the students page
    And I should see a list of students

  Scenario: I want to be able to search for a student
    Given I am on the students page
    When I type a students name in the search bar
    Then I am presented with a list of students that match that name
  # ================ Happy Path End ================
