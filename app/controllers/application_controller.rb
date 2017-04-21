class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    default_team_or_create_new_team
  end

  def default_team_or_create_new_team
    team = Member.where(user_id: current_user.id).first
    if team
      team_path(team.team_id)
    else 
      new_team_path 
    end
  end
end
