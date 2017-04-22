class Student::MatchesController < ApplicationController
  before_action :authenticate_user!
  before_filter :authorized?

  def index
    @matches = Match
    .where(student_1: current_user)
  end


  def authorized?
    if current_user.admin == false
    else
      flash[:notice] = "You are not allowed to see this!"
      redirect_to root_path
    end
  end
end
