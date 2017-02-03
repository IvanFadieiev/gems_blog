class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  after_action :previous_page_to_cookies

  def previous_page_to_cookies
    cookies[:current_page] = request.path
  end
end
