require_relative '../base.rb'

module GameAction
  class Penalty < Base

    def play
      commentary
      calculate_outcome
    end

    def commentary
      p "#{@possession_team[:name]} take the penalty.."
    end

    def calculate_outcome
      @outcome = [:save, :goal, :out_of_play_goal_kick].sample
    end

  end
end
