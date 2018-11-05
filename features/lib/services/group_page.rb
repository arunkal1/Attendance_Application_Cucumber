require "capybara"

class GroupPage
include Capybara::DSL

def visit_individual_group_page
  visit('http://localhost:3000/groups/1')
end

def click_robin
  click_link('Robin')
end

end
