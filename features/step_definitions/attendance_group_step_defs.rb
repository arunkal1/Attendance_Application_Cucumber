Given("I'm on the homepage") do
  group_page.visit_home_page
  sleep 2
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
  @active = group_page.group_is_active?
  @a_pre_info = group_page.get_group_info
  group_page.edit_group
end

When("I press active") do
  group_page.toggle_active
end

When("I press update") do
  group_page.click_update
end

Then("It should invert the active status") do
  expect(group_page.group_is_active?).to_not eq @active
end

Then("nothing will be updated") do
  @a_post_info = group_page.get_group_info
  for i in (0..(@a_pre_info.length - 1)) do
    expect(@a_pre_info[i]).to eq @a_post_info[i]
  end
end

When("I make a change to a field") do
  group_page.change_fields
end

Then("the group should be updated") do
  @a_post_info = group_page.get_group_info
  for i in (0..(@a_pre_info.length - 1)) do
    expect(@a_pre_info[i]).to_not eq @a_post_info[i]
  end
end

Then("a success message displayed") do
  expect(group_page.alert_notice_exists?).to eq true
end

When("I click add new group") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected to the add new group form") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I'm on the add new group form") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I press the add new group form") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("five errors to fix message should be displayed") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I'm on the add new group from") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I add a name to the name field") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("add a stream to the stream field") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I add a valid start date") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("a valid end date") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the group should be created") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("set the group as active") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the group should be shown as active on the home page") do
  pending # Write code here that turns the phrase above into concrete actions
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
