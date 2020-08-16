########devise########

class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
     
  def new
    # super
    # binding.pry
    # @user = User.new(configure_permitted_parameters)
  end

  def create
    # super
    # binding.pry
    # User.create(profile_image: '/assets/カービィ.jpg')  

  end


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [
        :user_name,       
        :email,
        :profile_image,
        :self_introduction,
        :password
      ]
    )
  end  
end
