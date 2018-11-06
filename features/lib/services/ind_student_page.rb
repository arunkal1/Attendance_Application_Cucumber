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
    page.has_xpath?('//table/tr/td')
  end

  def view_comments
    all('td a img').each do |img|
      puts img
    end
  end

  def visit_individual_student_page
  visit('http://localhost:3000/students/1')
  end

# ____ Scenario 3 ____
  def find_colour
      color = find('table tbody tr td a').native.css_value('background-color')
  end

  # def less_than_5_colour
  #   lessThancolor = find('body').native.css_value('background-color')
  # end
  #
  # def more_than_5_colour
  #   moreThancolor = find('body').native.css_value('background-color')
  # end
  #
  # def authorised_colour
  #   authcolor = find('body').native.css_value('background-color')
  # end
  #
  # def unauthorised_colour
  #   unauthcolor = find('body').native.css_value('background-color')
  # end

end
