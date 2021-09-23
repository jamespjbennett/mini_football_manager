require_relative './game_action.rb'
require_relative './header_in_play.rb'
require_relative './out_of_play/out_of_play_throw_in.rb'
require_relative '../../game_action_helper.rb'


class GoalKick < GameAction

  def play
    commentary
    calculate_outcome
    @outcome.play
  end

  def print_commentary_text
    p "#{@possession_team[:name]} take the goal kick"
  end


  def calculate_outcome
    @outcome = [GameActionHelper::header_in_play, GameActionHelper::out_of_play_throw_in].sample
  end

  def out_of_play_throw_in
    OutOfPlayThrowIn.new(@possession_team, @non_possession_team)
  end

  def header_in_play
    HeaderInPlay.new(@possession_team, @non_possession_team)
  end


end
