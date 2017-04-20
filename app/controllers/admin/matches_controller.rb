class Admin::MatchesController < ApplicationController
  before_action :authenticate_user!
  before_filter :authorized?

  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
  end

  def create
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
