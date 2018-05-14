class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "#{@user.username}, welcome to Alpha Blog!"
    else
      render 'new'
    end

  end

  private
  def user_params
    params.require(:user).permite(:username, :email, :password)
  end

end