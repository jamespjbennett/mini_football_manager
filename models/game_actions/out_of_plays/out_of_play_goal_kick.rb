require_relative '../base.rb'

module GameAction
  class OutOfPlayGoalKick < Base

    def play
      p "Goal kick to #{@non_possession_team[:name]}"
      terminate_sequence(:goal_kick)
    end
  end
end
