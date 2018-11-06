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

  def get_group_name
    # find("h1", text: /^Attendance for: .*$/) do |text|
    #   puts text.text
    # end
    # return text
  end

  def get_group_start_date
    # find(:text, /^Start date: .*$/) do |text|
    #   puts text
    # end
    # return text
  end

  def get_group_end_date
    # find(:text, /^End date: .*$/) do |text|
    #   puts text
    # end
    # return text
  end

  def get_group_stream
    # find(:text, /^Stream: .*$/) do |text|
    #   puts text
    # end
    # return text
  end
end
