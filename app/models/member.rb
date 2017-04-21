class Member < ActiveRecord::Base

  belongs_to :team
  belongs_to :user
  
  enum roles: [:player, :admin, :owner]

end
