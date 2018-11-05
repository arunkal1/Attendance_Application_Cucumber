require "capybara"

class GroupPage
  include Capybara::DSL

  def visit_home_page
    visit("/")
  end

  def find_groups
    find("#order_id").find_all(".card-group")
  end

  # Takes an array of groups and selects a group index
  def random_group_link groups
    indexVal = Random.new
    "/groups/#{indexVal.rand(1..(groups.length + 1))}"
  end

  def visit_group link
    visit(link)
  end

  def edit_group
    click_on("Edit Group")
  end

  def toggle_active
    sleep 2
    find("#group_active").click
  end

  def group_is_active?
    if has_content?(:text, "Active: true")
      return true
    else
      return false
    end
  end
end
