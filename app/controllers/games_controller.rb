class GamesController < ApplicationController

  def index
    @team = Team.find(params[:team_id])
  end

  def create
    game = Game.new(game_params)

    respond_to do |format|
      if game.save
        format.html { redirect_to game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: game }
      else
        format.html { render :new }
        format.json { render json: game.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def game_params
      params.require(:game).permit(:team_id, :opponent_id, :field, :park, :points_for, :points_against, :result, :year, :season)
    end

end
