class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.new(username:params[:user][:username], password: params[:user][:password])
    if @user.save
      redirect_to students_path
    else
      flash[:message] = "Please enter the correct stuff"
      render :new
    end

  end

end
