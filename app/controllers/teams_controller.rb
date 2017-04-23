class TeamsController < ApplicationController

  layout "team", :except => :new

  def index
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.new(team_params)

    respond_to do |format|
      if team.save
        Member.create(user_id: current_user.id, team_id: team.id, role: 2)

        format.html { redirect_to team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: team }
      else
        format.html { render :new }
        format.json { render json: team.errors, status: :unprocessable_entity }
      end
    end

  end

  private

    def team_params
      params.require(:team).permit(:name, :sport, :season, :year, :logo)
    end

end