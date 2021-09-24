require_relative '../base.rb'

module GameAction
  class GoalkeeperThrow < Base

    def play
      swap_possession_team
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} GK throws the ball out"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :out_of_play_throw_in => rand * 1.25,
        :ball_control => rand * 3,
        :ball_interception => rand * 1.25,
        :header_in_play => rand * 1.5
      }
    end
  end
end
