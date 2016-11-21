class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected 
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:first_name, :last_name, :user_name, :birthday, :email, :password, :remember_me, :pets)}
    devise_parameter_sanitizer.permit(:sign_in){ |u| u.permit( :email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update){ |u| u.permit(:first_name, :last_name, :user_name, :birthday, :email, :password, :current_password, :remember_me)}
  end
end
