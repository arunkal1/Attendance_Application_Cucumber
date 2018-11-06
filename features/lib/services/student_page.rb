require "capybara"

class StudentPage
include Capybara::DSL

  def visit_homepage
    visit('/')
  end

  # Clicks link to view all students
  def visit_students
    visit('/')
    click_link('Students')
  end

  # Clicks on one individual student
  def click_student name
    click_link("#{name}")
  end

  def search_student_by_id id
    all(:css, '.sorting_1').each do |person|
      if person.text == id
        return false
      end
    end
    true
  end

  # Checks if it takes you to that student's page
  def is_profile
    if find(:css, '.show-profile').visible?
      true
    end
  end

  # Gets all the information for that particular student
  def student_information
    if find(:xpath, '/html/body/div[2]/div[1]/div[2]/table/tbody/tr[1]/td[1]/h1').visible?
      true
    end
  end

  def shows_all_students
    if find(:xpath, '//*[@id="studentslist"]/thead/tr/th[2]').visible?
      true
    end
  end

  # Takes you to the add new student form
  def click_add_new_student
    click_link('Add New Student')
  end

  # Clicks the button to create a new student
  def select_new_student
    click_link('Create a new student')
  end

  def search_student name
    find(:xpath, '//*[@id="studentslist_filter"]/label/input').fill_in(:with=> "#{name}")
  end



end
