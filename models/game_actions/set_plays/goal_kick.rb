require_relative '../base.rb'

module GameAction
  class GoalKick < Base

    def play
      commentary
      calculate_outcome
    end

    def commentary
      p "#{@possession_team[:name]} take the goal kick"
    end

    def calculate_outcome
      @outcome = [:out_of_play_throw_in, :header_in_play].sample
    end

  end
end
