class MembersController < ApplicationController

  layout "team"
  
  def index
    @team = Team.find(params[:team_id])
  end

  def create
    member = Member.new(member_params)

    respond_to do |format|
      if member.save
        format.html { redirect_to member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: member }
      else
        format.html { render :new }
        format.json { render json: member.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def member_params
      params.require(:member).permit(:user_id, :team_id, :role)
    end

end