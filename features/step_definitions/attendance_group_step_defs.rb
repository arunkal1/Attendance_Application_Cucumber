Given("I'm on the homepage") do
  group_page.visit_home_page
end

Then("I should be able to see the groups") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on an individual group") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected to that group's page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I'm editting a group") do
  group_page.edit_group
end

When("I press active") do
  @active = group_page.group_is_active?
  group_page.toggle_active
end

When("I press update") do
  group_page.click_update
end

Then("It should invert the active status") do
  expect(group_page.group_is_active?).to_not eq @active
end

Then("nothing will be updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I make a change to a field") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the group should be updated") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a success message displayed") do
  expect(group_page.add_group_success_message).to eq "Eng-99 was created"
end

When("I click add new group") do
  homepage.click_add_group
end

Then("I should be redirected to the add new group form") do
  expect(current_url).to eq 'http://localhost:3000/groups/new'
end

Given("I'm on the add new group form") do
  group_page.visit_home_page
  # count the initial number of groups, both active and inactive, on the attendance application
  @start_group_count = homepage.number_of_groups
  sleep 1
  homepage.click_add_group
  sleep 1
  expect(current_url).to eq 'http://localhost:3000/groups/new'
end

When("I press the add new group form") do
  group_form_page.submit_new_group
  sleep 1
end

Then("five errors to fix message should be displayed") do
  expect(group_form_page.error_num).to eq "5 errors To Fix"
end


When("I add a name to the name field") do
  group_form_page.input_name("Eng-99")
  sleep 1
end

When("add a stream to the stream field") do
  group_form_page.input_stream("SDET")
  sleep 1
end

When("I add a valid start date") do
  group_form_page.input_start_date("27082018")
  sleep 1
end

When("a valid end date") do
  group_form_page.input_end_date("23112018")
  sleep 1
end

Then("the group should be created") do
  group_page.visit_home_page
  @end_group_count = homepage.number_of_groups
  expect(@end_group_count - @start_group_count).to eq 1
  expect(homepage.group_names).to eq "Eng-99"
  sleep 1
end

When("set the group as active") do
  group_form_page.select_group_active
  expect(group_form_page.active_button_selected?).to be true
end

Then("the group should be shown as active on the home page") do
  expect(homepage.group_active?).to be true
end

Given("that I am viewing an individual group") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click delete group") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("that group will be deleted") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("will no longer be visible on the groups page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the appropriate button to arrange the groups by either active status or id or name") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the students should be arranged correctly by the active status or id or name") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on an individual group page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("There are students in the group") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to see the students associated with that group") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("There are no students in the group") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the no date error should be displayed") do
  pending # Write code here that turns the phrase above into concrete actions
end
