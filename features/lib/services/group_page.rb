require "capybara"

class GroupPage
include Capybara::DSL

def visit_individual_group_page
  visit('http://localhost:3000/groups/1')
end

def click_robin
  click_link('Robin')
end

def click_arrow_up
  find(:css, 'th.sorting').click
end

def get_name_column
  @names_array = []
  all('td a').each do |a|
    @names_array.push a.text
  end

  # @names_array.sort
  p @names_array
  # values = ['pinda', 'elisha', 'michael']
  #
  # copy = values.sort
  # puts copy.to_s
end

end
