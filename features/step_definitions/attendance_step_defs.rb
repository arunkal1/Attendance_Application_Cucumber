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

When("choose an invalid date after the end date") do
  attendance_form_page.select_date "29-08-2019"
end

When("click next") do
  attendance_form_page.click_next
end

Then("I shouldn't be able to add attendance for date in {int}") do |int|
  if int == 2003
    expect(current_url).to_not eq "http://localhost:3000/attendances/new?group=1&date=2003-08-29"
  else
    expect(current_url).to_not eq "http://localhost:3000/attendances/new?group=1&date=2019-08-29"
  end
end
