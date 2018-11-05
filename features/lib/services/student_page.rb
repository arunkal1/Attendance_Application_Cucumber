require "capybara"

class StudentPage
include Capybara::DSL

  def visit_students
    visit('/')
    click_link('Students')
  end

  def click_student name
    click_link("#{name}")
  end

  def click_add_new_student
    click_link('Add New Students')
  end

  def select_new_student
    click_link('Create a new student')
  end

end
