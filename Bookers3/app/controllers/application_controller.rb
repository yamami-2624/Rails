class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	# devise_controllerは行われる前にconfigure_permitted_parametersが実行される。

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


 before_action :authenticate_user!
  def authenticate
   redirect_to top_path unless user_signed_in?
 end
end
