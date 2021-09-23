require_relative '../base.rb'

module GameAction
  class GoalkeeperInPlayKick < Base

    def play
      swap_possession_team
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} GK kicks the ball out"
    end

    def calculate_outcome
      @outcome = [:out_of_play_throw_in, :header_in_play, :ball_control].sample
    end

    def swap_possession_team
      @non_possession_team, @possession_team = @possession_team, @non_possession_team
    end

  end
end
