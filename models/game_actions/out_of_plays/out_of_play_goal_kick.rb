require_relative '../base.rb'

module GameAction
  class OutOfPlayGoalKick < Base

    def play
      commentary
      calculate_outcome
      terminate_sequence(@outcome)
    end

    def print_commentary_text
      p "Goal kick to #{@non_possession_team[:name]}"
    end

    def calculate_outcome
      @outcome = :goal_kick
    end
  end
end
