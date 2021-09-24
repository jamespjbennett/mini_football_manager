require_relative '../base.rb'

module GameAction
  class Dribble < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} take a dribble"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :pass => rand * 4,
        :tackle => rand * 2,
        :cross => rand * 2,
        :out_of_play_free_kick_foul => rand * 1.75,
        :out_of_play_penalty_foul => rand * 0.75,
      }
    end
  end
end
