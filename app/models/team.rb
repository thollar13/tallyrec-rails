class Team < ActiveRecord::Base

  validates_length_of :name, :within => 1..75

end
