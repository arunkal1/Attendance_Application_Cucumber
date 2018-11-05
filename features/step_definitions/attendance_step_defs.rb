# _____ If I check an individual page I should be able to view student weekly attendances _____
Given("I am on the homepage") do
  ind_student_page.visit_homepage
  expect(current_url).to eq 'http://localhost:3000/'
end

Given("I click onto a group") do
  ind_student_page.visit_group_page
  expect(current_url).to eq 'http://localhost:3000/groups/1'
end

Given("I click on a specific student") do
  ind_student_page.click_student
end


Then("I should see attendance form") do
  expect(current_url).to eq 'http://localhost:3000/students/8'
end

# _____ If I add an attendance to a user it should be seen within the attendance table. ____
Given("I started on the homepage") do
  ind_student_page.visit_homepage
  expect(current_url).to eq 'http://localhost:3000/'
end

Given("I click onto a chosen group") do
  ind_student_page.visit_active_group
  expect(current_url).to eq 'http://localhost:3000/groups/6'
end

Given("I click on a student") do
  ind_student_page.click_student
end

Given("I should be able to see todays date") do
  ind_student_page.find_today
end

Given("I should be able to view comments") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I should be able to remove comments") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should return to the home page") do
  pending # Write code here that turns the phrase above into concrete actions

# Michaels Code
Given("I am on the Attendance form page") do
  attendance_form_page.visit_attendance_form_page
end

When("I pick a group") do
  attendance_form_page.select_group
end

When("choose a valid date") do
  attendance_form_page.select_date "29-08-2018"
  attendance_form_page.click_next
end

When("add a type of Attendance and comment for each student in the list") do
  expect(attendance_form_page.get_group_name).to eq true
  attendance_form_page.add_attendance 1, "Comment"
  attendance_form_page.add_attendance 2, ""
  attendance_form_page.add_attendance 3, ""
  attendance_form_page.add_attendance 4, ""
  attendance_form_page.add_attendance 5, ""
  attendance_form_page.add_attendance 1, ""
  attendance_form_page.add_attendance 2, ""
  attendance_form_page.add_attendance 3, ""
end

Then("I should go back to the Homepage") do
  expect(current_url).to eq "http://localhost:3000/"
end

When("choose an invalid date before the start date") do
  attendance_form_page.select_date "29-08-2003"
end

When("click next") do
  attendance_form_page.click_next
end

Then("I shouldn't be able to add attendance for that date") do
  expect(current_url).to_not eq "http://localhost:3000/attendances/new?group=1&date=2003-08-29"

end
