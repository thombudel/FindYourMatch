class Student::StudentsController < ApplicationController
  before_action :authenticate_user!
  before_filter :authorized?

  def home
  end

  def authorized?
    if current_user.admin == false
    else
      redirect_to root_path
    end
  end
end
