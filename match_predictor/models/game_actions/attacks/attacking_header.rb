require_relative '../base.rb'

module GameAction
  class AttackingHeader < Base

    def play
      commentary
      calculate_outcome
    end

    def commentary
      p "Attacking header by #{@possession_team[:name]}"
    end

    def calculate_outcome
      @outcome = [:goal, :save, :out_of_play_goal_kick].sample
    end
  end
end
