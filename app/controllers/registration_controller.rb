class RegistrationController < ApplicationController
  
    def after_sign_up_path_for(resource)
      root_path
    end
  end