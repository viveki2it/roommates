class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def is_login?
    unless current_user
      flash[:error] = "Please login!"
      redirect_to root_path
    end
  end
end
