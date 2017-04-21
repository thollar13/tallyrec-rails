class Team < ActiveRecord::Base

  has_many :members

  validates_length_of :name, :within => 1..75

end
