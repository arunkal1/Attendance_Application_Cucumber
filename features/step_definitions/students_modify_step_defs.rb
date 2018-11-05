When("I click on the add student link") do
  click_add_new_student
end

Then("I should be taken the add student form") do
  expect(current_url).to eq 'http://localhost:3000/students/new'
end

Given("I am on a student’s page") do
  visit('http://localhost:3000/students')
  student_page.click_student "Arun"
end

When("I click on the edit student button") do
  ind_student_page.edit_student
end

Then("I should be taken the edit student form") do
  expect(current_url).to eq 'http://localhost:3000/students/6/edit'
end

When("I click on the delete student button") do
  ind_student_page.delete_student
end


Then("the student should be removed from the database") do
  visit('http://localhost:3000/students')
end

Given("I am on a new student page") do
  student_page.visit_homepage
  student_page.click_add_new_student
end

When("I input a valid name") do
  student_form_page.input_name 'Dan'
end

When("I select a group") do
  student_form_page.select_group '8 - BA-07'
end

When("I check the active group box") do
  student_form_page.click_active
end

When("I click submit") do
  student_form_page.click_submit
end

Then("they are active") do
  expect(ind_student_page.check_active).to eq "Active"
end

Then("I am redirected to the student's page") do
  expect(ind_student_page.check_name).to eq 'Dan'
end

Then("a notice appears to advise the student has been created") do
  ind_student_page.check_notice
end

Then("they are inactive") do
  expect(ind_student_page.check_active).to eq 'Inactive'
end

When(/^I input an invalid (.*)$/) do |name|
  student_form_page.input_name name
end

Then(/^I should be presented with (.*)$/) do |error|
  expect(student_form_page.error_message).to eq error
end

Given("I am on a student’s edit page") do
  visit('http://localhost:3000/students')
  student_page.click_student "Arun"
  ind_student_page.edit_student
  expect(current_url).to eq 'http://localhost:3000/students/6/edit'
end

Then("a notice appears to advise the student has been updated") do
  ind_student_page.check_notice
end
