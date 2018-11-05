Given("I am on the students page OR a groups page") do
  student_page.visit_students
  sleep 1
end

When("I click on a student") do
  student_page.click_student "Dan"
  sleep 1
end

Then("I should be taken to the individual student page") do
  expect(student_page.is_profile).to be true
end

Then("I should be presented with information on the student") do
  expect(student_page.student_information).to be true
end

Given("I am on a page") do
  student_page.visit_homepage
  sleep 1
end

When("I click the students link") do
  student_page.visit_students
  sleep 1
end

Then("I should be taken to the students page") do
  expect(student_page.current_url).to eq 'http://localhost:3000/students'
end

Then("I should see a list of students") do
  pending # Write code here that turns the phrase above into concrete actions
end
