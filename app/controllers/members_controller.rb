class MembersController < ApplicationController

  def create
    member = Team.new(member_params)

    respond_to do |format|
      if roster.save
        format.html { redirect_to roster, notice: 'Roster was successfully created.' }
        format.json { render :show, status: :created, location: roster }
      else
        format.html { render :new }
        format.json { render json: roster.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def member_params
      params.require(:member).permit(:user_id, :team_id, :role)
    end

end