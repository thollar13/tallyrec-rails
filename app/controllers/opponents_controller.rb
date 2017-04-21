class OpponentsController < ApplicationController

  def index
    @team = Team.find(params[:team_id])
  end

  def create
    opponent = Opponent.new(opponenet_params)

    respond_to do |format|
      if opponent.save
        format.html { redirect_to opponent, notice: 'Opponent was successfully created.' }
        format.json { render :show, status: :created, location: opponent }
      else
        format.html { render :new }
        format.json { render json: opponent.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def opponenet_params
      params.require(:opponent).permit(:name, :season, :year)
    end

end
