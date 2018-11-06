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
    "/groups/#{indexVal.rand(1..(groups.length))}"
  end

  def visit_group link
    visit(link)
  end

  def edit_group
    click_on("Edit Group")
    sleep 2
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

  def click_update
    click_on("Update Group")
  end

  def get_group_info
    group_title = find("h1")
    a_list_items = find_all("li")

    return [group_title.text, a_list_items[5].text, a_list_items[6].text, a_list_items[8].text]
  end

  def edit_group_name
    fill_in("group_name", with: "Flubbs")
  end

  def edit_group_stream
    fill_in("group_stream", with: "LowFlow")
  end

  def edit_group_startdate
    fill_in("group_startdate", with: "22/07/2018")
  end

  def edit_group_enddate
    fill_in("group_enddate", with: "18/12/2018")
  end

  def change_fields
    edit_group_name
    edit_group_stream
    edit_group_startdate
    edit_group_enddate
  end

  def alert_notice_exists?
    if has_css?(".alert")
      return true
    else
      return false
    end
  end
end
