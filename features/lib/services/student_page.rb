require "capybara"

class StudentPage
include Capybara::DSL

  def visit_students
    visit('/')
    click_link('Students')
  end

  def click_each_student

  end

end
