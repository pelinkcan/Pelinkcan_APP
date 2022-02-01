class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!

    def after_sign_up_path_for(resource)
      tags_first_create_path(resource)
     end
    
    def after_sign_in_path_for(resource)
     links_path(resource)
    end
    
     private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email]) # 注目
    end
end
