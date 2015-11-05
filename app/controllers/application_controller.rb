class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |params|
      params.permit(
        :email, :first_name, :last_name, :password, :password_confirmation, :username, :city, :user_pic
      )
    }
    devise_parameter_sanitizer.for(:account_update) { |params|
      params.permit(
        :email, :first_name, :last_name, :password, :password_confirmation, :current_password, :username, :city, :user_pic
      )
    }
  end

end
