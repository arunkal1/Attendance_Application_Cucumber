require "capybara"

class IndStudentPage
include Capybara::DSL

  def visit_homepage
    visit('http://localhost:3000/')
  end

  def visit_group_page
    click_link('Eng-01')
  end

  def visit_active_group
    click_link('Eng-16')
  end

  def click_student
    click_link('Elisha')
  end

  def find_today

  end

  def visit_individual_student_page
  visit('http://localhost:3000/students/1')
  end


end
