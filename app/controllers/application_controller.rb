class ApplicationController < ActionController::Base

before_action :authenticate_user!
before_action :configure_permitted_parameters, if: :devise_controller?


  protected
  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end

  def after_sign_in_path_for(_resource_or_scope)
    user_session_path
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password password_confirmation])
  end
end
