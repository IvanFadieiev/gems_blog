module ApplicationHelper
  def previous_page
    cookies[:current_page] || root_path
  end
end
