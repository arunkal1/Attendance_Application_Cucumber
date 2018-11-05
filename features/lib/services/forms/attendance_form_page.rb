require "capybara"

class AttendanceFormPage
include Capybara::DSL

  def visit_attendance_form_page
    visit("attendances")
  end

  def select_group string
    within '#myForm' do
      if string == "Eng-01"
        find("option[value='1']").click
      elsif string == "Eng-11"
        find("option[value='4']").click
      end
    end
  end

  def select_date date
    within '#myForm' do
      fill_in 'theDate', :with => date
    end
  end

  def click_next
    within '#myForm' do
      click_button('Next')
    end
  end

  def add_attendance type, comment
    choose("attendance_att_status_#{type}")
    fill_in 'attendance_comment', :with => comment
    click_button("Create Attendance")
  end

  def get_group_name
    find_link('Eng-01').visible?
  end

end
