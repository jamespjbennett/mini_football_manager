require_relative '../base.rb'

module GameAction
  class Cross < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} with the cross!"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :shot => rand * 1.25,
        :attacking_header => rand * 2,
        :defensive_header => rand * 2.5,
        :ball_interception => rand * 1.5,
        :out_of_play_corner => rand * 2,
      }
    end
  end
end
