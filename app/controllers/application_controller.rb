class ApplicationController < ActionController::Base
<<<<<<< HEAD
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    !!current_user
  end
  
  
=======
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
>>>>>>> 62f0cf85eb1c64b8c5d23fabfd6dc6ecdb35b0c6
end
