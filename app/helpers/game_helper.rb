module GameHelper

  def game_result(game)
    if game == 1
      "Win"
    elsif game == 2
      "Loss"
    else
      ""
    end
  end

end
