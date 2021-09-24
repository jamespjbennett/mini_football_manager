require_relative '../base.rb'

module GameAction
  class AttackingHeader < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "Attacking header by #{@possession_team[:name]}"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :goal => rand * 1,
        :save => rand * 3,
        :out_of_play_goal_kick => rand * 3,
      }
    end
  end
end
