require "capybara"

class StudentFormPage
  include Capybara::DSL

  STUDENT_NAME_FIELD_ID = 'student_name'
  STUDENT_ACTIVE_ID = 'student_active'
  GROUP_OPTION_ID = 'student_group_id'
  ERROR_NEW_TEXT_XPATH = '//*[@id="new_student"]/center/div/ul/li/p'
  ERROR_EDIT_TEXT_XPATH = '//*[@id="edit_student_1"]/center/div/ul/li/p'


  def input_name name
    fill_in(STUDENT_NAME_FIELD_ID, with: name)
  end

  def select_group group
    select(group, :from => GROUP_OPTION_ID)
  end

  def click_active
    check(STUDENT_ACTIVE_ID)
  end

  def click_submit
    click_button('Submit')
  end

  def error_message
    find(:xpath, ERROR_NEW_TEXT_XPATH).text
  end

  def error_message_edit
    find(:xpath, ERROR_EDIT_TEXT_XPATH).text
  end



end
