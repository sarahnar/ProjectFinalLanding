class Sessions::SessionsController < Devise::SessionsController
  before_action :configure_permitted_parameters, if: :devise_controller?
 
   before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

   protected

  # If you have extra params to permit, append them to the sanitizer.

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :email)
  end

  
  def configure_sign_in_params
     devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
   end
end
