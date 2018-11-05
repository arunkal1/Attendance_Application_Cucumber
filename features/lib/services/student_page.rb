require "capybara"

class StudentPage
include Capybara::DSL

def visit_students
  visit('/')
  click_link('Students')
end

end
