class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :authenticate_user!, except: [:index,:show]
	before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  def can_administer?
  	if current_user.nil?
  		redirect_to root_url
  	elsif current_user.permission_level==2
  		true
  	else
	  	false
	end
	#      current_user.try(:admin?)
  end

	protected
   def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me,:permission_level) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:name, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :current_password) }
  	end

end
