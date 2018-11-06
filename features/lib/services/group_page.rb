require "capybara"

class GroupPage
  include Capybara::DSL

  def visit_home_page
    visit("/")
  end

  def add_group_success_message
    within(:css, ".alert-success") do
      find(:css, ".alert").text
    end
  end

end
