class ApplicationController < ActionController::Base
  # respond_to :html, :json
  before_filter :configure_permitted_parameters, if: :devise_controller?


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def access_denied(exception)
    redirect_to home_index_path, :alert => exception.message
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :date_of_birth, :gender,
                                                            :password_confirmation, :remember_me, :avatar, :avatar_cache, role_ids: []) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :date_of_birth, :gender,
                                                                   :password_confirmation, :current_password, :avatar, :avatar_cache, role_ids: []) }
  end


end
