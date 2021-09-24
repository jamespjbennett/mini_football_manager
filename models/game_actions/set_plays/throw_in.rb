require_relative '../base.rb'

module GameAction
  class ThrowIn < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} takes the throwin"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :ball_interception => rand * 1.5,
        :ball_control => rand * 2.5,
        :header_in_play => rand * 2,
      }
    end
  end
end
