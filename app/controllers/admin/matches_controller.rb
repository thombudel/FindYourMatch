class Admin::MatchesController < ApplicationController
  before_action :authenticate_user!
  before_filter :authorized?

  def index
    @matches = Match.all
  end

  def authorized?
    if current_user.admin == true
    else
      redirect_to root_path
    end
  end
end
