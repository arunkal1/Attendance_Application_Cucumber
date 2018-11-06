require "capybara"

class Homepage
  include Capybara::DSL

  attr_accessor :group_size_array

  def initialize
    @group_size_array = []
  end

  def click_add_group
    find(:css, ".new_group_button").click
  end

  def number_of_groups
  # initialise array to store the id of the group for counting purposes
    groups = []
    within(:css, "#order_id") do
      all(".link_style").each do |group|
        group = group[:href].split("/").last
        groups.push group
      end
    end
  # return the number of groups currently active and inactive on the attendance application
  return groups.length
  end

  def group_names
    group_titles = []
    within(:css, "#order_id") do
      all("h2").each do |group_title|
        group_titles.push group_title.text
      end
    end
    puts group_titles.pop
    return group_titles.pop
  end

  def group_active?
    groups = []
    find("#order_id").find_all(".card-group").each do |item|
      groups.push(item)
    end
    return groups.last.has_css?(".active-group")
  end

end
