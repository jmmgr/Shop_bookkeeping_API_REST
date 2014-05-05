class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :null_session
  #everything i put here, will use in all the controllers.

  
  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      user = User.find_by name: name
      if user
         user.password == BCrypt::Engine.hash_secret(password,user.salt)
      else 
        return false
      end
      end
  end  
end
