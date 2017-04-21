class SchedulesController < ApplicationController

  def index
    @team = Team.find(params[:team_id])
  end

  def create
    schedule = Schedule.new(schedule_params)

    respond_to do |format|
      if schedule.save
        format.html { redirect_to schedule, notice: 'Schedule was successfully created.' }
        format.json { render :show, status: :created, location: schedule }
      else
        format.html { render :new }
        format.json { render json: schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def schedule_params
      params.require(:schedule).permit(:user_id, :team_id, :role)
    end

end