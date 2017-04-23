class Team < ActiveRecord::Base

  has_many :members
  has_many :opponents
  has_many :games
  has_many :users

  validates_length_of :name, :within => 1..75

end
