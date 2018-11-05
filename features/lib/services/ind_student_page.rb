require "capybara"

class IndStudentPage
  include Capybara::DSL

  def edit_student
    click_link('Edit Student')
  end

  def delete_student
    click_link('Delete Student')
  end

  def check_active
   find(:css, '.show-active').text
  end

  def check_name
    find(:xpath, '/html/body/div[2]/div[1]/div[2]/table/tbody/tr[1]/td[2]/h1').text
  end

  def check_group
    find(:xpath, '/html/body/div[2]/div[1]/div[2]/table/tbody/tr[2]/td[2]/h1/a').text
  end

  def check_stream
    find(:xpath, '/html/body/div[2]/div[1]/div[2]/table/tbody/tr[3]/td[2]/h1/span').text
  end

  def check_notice
    find(:css, '.notice').visible?
  end

end
