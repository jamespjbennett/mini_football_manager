require_relative '../base.rb'

module GameAction
  class Clearance < Base

    def play
      swap_possession_team
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} hoofs the ball clear"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :out_of_play_throw_in => rand * 2,
        :header_in_play => rand * 1.75,
        :ball_control => rand * 2,
        :ball_interception => rand * 2.5,
      }
    end

  end
end
