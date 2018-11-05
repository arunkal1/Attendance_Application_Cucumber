require_relative 'services/group_page.rb'
require_relative 'services/homepage.rb'
require_relative 'services/ind_student_page.rb'
require_relative 'services/student_page.rb'
require_relative 'services/forms/attendance_form_page.rb'
require_relative 'services/forms/group_form_page.rb'
require_relative 'services/forms/student_form_page.rb'

module AttendanceApplication

  def homepage
    Homepage.new
  end

  def group_page
    GroupPage.new
  end

  def student_page
    StudentPage.new
  end

  def ind_student_page
    IndStudentPage.new
  end

  def attendance_form_page
    AttendanceFormPage.new
  end

  def group_form_page
    GroupFormPage.new
  end

  def student_form_page
    StudentFormPage.new
  end

end
