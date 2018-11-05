require "capybara"

class GroupPage
include Capybara::DSL

def visit_home_page
  visit("/")
end

end
