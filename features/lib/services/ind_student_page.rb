require "capybara"

class IndStudentPage
include Capybara::DSL

def visit_individual_student_page
  visit('http://localhost:3000/students/1')
end


end
