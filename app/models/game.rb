class Game < ActiveRecord::Base

  has_one :team

  before_update :set_game_result

  protected

    def set_game_result
      if self.points_for > self.points_against
        self.result = 1
      else 
        self. result = 2
      end
    end

end
