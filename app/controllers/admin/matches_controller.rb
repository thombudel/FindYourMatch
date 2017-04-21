class Admin::MatchesController < ApplicationController
  before_action :authenticate_user!
  before_filter :authorized?

  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
    #Method needs to check if user is !admin, then able to create new match.
  end

  def create
    #Method needs to create new match for a specific day out of !admins that are not paired yet for that day.
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
  def match_params
    params.require(:match).permit(:date, :student_1_id, :student_2_id)
  end

  def students_available
    #Method to check if a user that is !admin is already paired for a day. If so, remove it from available users.
  end
