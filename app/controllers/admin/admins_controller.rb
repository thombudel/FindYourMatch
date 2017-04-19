class Admin::AdminsController < ApplicationController
  before_action :authenticate_user!
  before_filter :authorized?

  def home
  end

  def authorized?
    if current_user.admin == true
    else
      redirect_to student_path
    end
  end
end
