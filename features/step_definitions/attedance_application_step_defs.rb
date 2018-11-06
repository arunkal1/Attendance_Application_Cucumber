Given("I am on the Homepage") do
  homepage.visit_home_page
  expect(current_url).to eq 'http://localhost:3000/'
  # sleep 1
end

When("I click on a group") do
  homepage.click_link
  # sleep 1
end

Then("I should be redirected to the individual page for that group") do
  group_page.visit_individual_group_page
  # sleep 5
end

Given("I am on the groups individual page") do
  group_page.visit_individual_group_page
  expect(current_url).to eq 'http://localhost:3000/groups/1'
  sleep 5
end

When("I click on a students name") do
  group_page.click_robin
end

Then("I should go to that students profile page") do
  ind_student_page.visit_individual_student_page
  sleep 5
end

Given("I am inside of a group page") do
    group_page.visit_individual_group_page
    expect(current_url).to eq 'http://localhost:3000/groups/1'
end

When("I click the arrow above the names that points up") do
    group_page.click_arrow_up
    # sleep 5
end

Then("I should be able to view the table with students ordered in assendening order") do
    group_page.get_name_column
    sleep 10
end
