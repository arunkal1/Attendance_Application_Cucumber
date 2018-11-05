Before("@edit_group") do
  group_page.visit_home_page
  groups = group_page.find_groups
  groupLink = group_page.random_group_link groups
  group_page.visit_group groupLink
end
