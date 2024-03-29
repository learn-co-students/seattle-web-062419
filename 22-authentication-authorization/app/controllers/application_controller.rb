class ApplicationController < ActionController::Base

  helper_method :redirect_user, :logged_in?

  def redirect_user
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!session[:user_id]
  end

end
