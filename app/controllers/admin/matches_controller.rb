class Admin::MatchesController < ApplicationController
  before_action :authenticate_user!
  before_filter :authorized?

  def index
    @matches = Match.all
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
