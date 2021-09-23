require_relative '../base.rb'

module GameAction
  class BallControl < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} controlls the ball"
    end

    def calculate_outcome
      @outcome = [:dribble, :pass, :out_of_play_free_kick_foul, :out_of_play_penalty_foul].sample
    end

  end
end
