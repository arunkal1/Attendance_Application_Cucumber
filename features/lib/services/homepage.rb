require "capybara"

class Homepage
include Capybara::DSL

def visit_home_page
  visit('http://localhost:3000/')
end

def click_on_group
  click_link('Eng-16')
end

end
