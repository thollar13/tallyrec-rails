class GamesController < ApplicationController

  def index
    @team = Team.find(params[:team_id])
    @game = Game.new
  end

  def edit
    @team = Team.find(params[:team_id])
    @game = Game.where("team_id = ? AND id = ?", params[:team_id], params[:id]).first
  end

  def create
    game = Game.new(game_params)

    respond_to do |format|
      if game.save
        format.html { redirect_to team_games_path(params[:team_id]), notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: game }
      else
        format.html { render :new }
        format.json { render json: game.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @game = Game.find(params[:id])

    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to team_games_path(params[:team_id]), notice: 'Game was successfully updated.' }
      end
    end
  end

  private

    def game_params
      params.require(:game).permit(:team_id, :opponent_id, :field, :park, :points_for, :points_against, :result, :year, :season)
    end

end
