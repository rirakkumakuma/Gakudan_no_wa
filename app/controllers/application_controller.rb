class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?





  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:last_name, :first_name, :last_name_kana, :first_name_kana])
    # devise_parameter_sanitizer.for(:invite) { |u| u.permit(:email) }
    # devise_parameter_sanitizer.for(:accept_invitation) { |u| u.permit(:password, :password_confirmation, :invitation_token, :last_name, :first_name, :last_name_kana, :first_name_kana) }
  end
end
