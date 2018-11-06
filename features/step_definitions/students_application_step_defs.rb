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

Then("I should be able to see information on the student") do
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
  expect(student_page.shows_all_students).to be true
end

Given("I am on the students page") do
  student_page.visit_students
  expect(student_page.current_url).to eq 'http://localhost:3000/students'
end

When("I type a students name in the search bar") do
  student_page.search_student "Arun"
end

Then("I am presented with a list of students that match that name") do
  expect(student_page.shows_all_students).to be true
end
