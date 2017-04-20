class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :authorized?

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to :admin_users, notice: "User updated"
    else
      render 'index'
    end
  end

  def authorized?
    if current_user.admin == true
    else
      flash[:notice] = "You are not allowed to see this!"
      redirect_to root_path
    end
  end
end

private
  def user_params
    params.permit(:email, :admin)
  end
