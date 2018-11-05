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
end
