class SchedulesController < ApplicationController

  layout "team"
  
  def index
    @games = Game.where(team_id: params[:team_id])
  end

end