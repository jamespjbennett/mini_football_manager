require_relative '../base.rb'

module GameAction
  class OutOfPlayGoalKick < Base

    def play
      commentary  
      terminate_sequence(:goal_kick)
    end

    def print_commentary_text
      p "Goal kick to #{@non_possession_team[:name]}"
    end
  end
end
