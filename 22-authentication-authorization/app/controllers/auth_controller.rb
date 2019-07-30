class AuthController < ApplicationController
  def login
    # @logged_in = logged_in?
  end

  def verify
    # byebug
    @user = User.find_by(username: params[:auth][:username])
    if @user && @user.validate(params[:auth][:password])
      # session[:username]
      session[:user_id] = @user.id
      redirect_to students_path
    else
      render :login
    end
  end

  def logout
    session.clear
    redirect_to login_path
  end

end
