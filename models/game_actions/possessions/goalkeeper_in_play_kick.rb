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
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :out_of_play_throw_in => rand * 1.5,
        :header_in_play => rand * 3,
        :ball_control => rand * 2,
      }
    end
  end
end
