class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :avatar, :email, :password)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :avatar, :email, :password, :current_password)}
    end
     
    def user_logged_in
      unless user_signed_in?
        flash[:danger] = "Login is required to access this page!"
        redirect_to new_user_session_path
      end
    end

    def is_admin_user
      unless (user_signed_in? and current_user.admin?)
        redirect_to welcome_path
      end
    end
end
