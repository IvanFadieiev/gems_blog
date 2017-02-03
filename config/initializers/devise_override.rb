Devise::RegistrationsController.class_eval do
  def create
    if User.count >= 1
      set_flash_message! :notice, :enough
      redirect_to new_user_session_path
    else
      super
    end
  end
end
