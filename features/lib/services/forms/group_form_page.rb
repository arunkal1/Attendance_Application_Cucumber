require "capybara"

class GroupFormPage
  include Capybara::DSL

  def submit_new_group
    click_on('Create Group')
  end

  def error_num
    find(:css, ".alert-heading").text
  end

  def input_name name
    fill_in('group_name', with: name)
  end

  def input_stream stream
    fill_in('group_stream', with: stream)
  end

  def input_start_date date
    fill_in('group_startdate', with: date)
  end

  def input_end_date date
    fill_in('group_enddate', with: date)
  end

  def select_group_active
    find(:css, "#group_active").click
  end

  def active_button_selected?
    find(:css, "#group_active").checked?
  end

end
