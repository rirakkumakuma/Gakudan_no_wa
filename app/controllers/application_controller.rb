class ApplicationController < ActionController::Base
  # before_action :authenticate!, except: [:top]
  # def  authenticate!
    # if admin_user_signed_in?
    # authenticate_admin_user!
    # else
    # authenticate_member!
    # end
  # end
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:last_name, :first_name, :last_name_kana, :first_name_kana])
    devise_parameter_sanitizer.permit(:invite, keys:[:email])
    devise_parameter_sanitizer.permit(:accept_invitation, keys:[:last_name, :first_name, :last_name_kana, :first_name_kana, :password, :password_confirmation, :invitation_token])
  end
end
