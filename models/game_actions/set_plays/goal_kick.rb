require_relative '../base.rb'

module GameAction
  class GoalKick < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} take the goal kick"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :out_of_play_throw_in => rand * 1.5,
        :header_in_play => rand * 3,
        :pass => rand * 2.5,
      }
    end

  end
end
