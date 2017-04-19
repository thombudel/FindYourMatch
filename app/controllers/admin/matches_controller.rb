class Admin::MatchesController < ApplicationController
  def index
    @matches = Match.all
  end
end
