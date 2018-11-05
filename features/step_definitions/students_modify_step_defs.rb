Given("I am on a page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the add student link") do
  student_page.select_new_student
end

Then("I should be taken the add student form") do
  expect(current_url).to eq 'localhost:3000/students/new'
end

Given("I am on a student’s page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the edit student button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be taken the edit student form") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the delete student button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the student should be removed from the group") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the student should be removed from the database") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on a new student page") do
  visit('localhost:3000/students/new')
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

Then("the new student is added") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("they are active") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am redirected to the student's page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a notice appears to advise the student has been created") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("they are inactive") do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I input an invalid (.*)$/) do |name|
  student_form_page.input_name name
end

Then(/^I should be presented with (.*)$/) do |error|
  pending
end

Given("I am on a student’s edit page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the student is updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a notice appears to advise the student has been updated") do
  pending # Write code here that turns the phrase above into concrete actions
end
