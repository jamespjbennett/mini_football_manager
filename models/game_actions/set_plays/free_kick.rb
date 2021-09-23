require_relative '../base.rb'

module GameAction
  class FreeKick < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} take the free kick.."
    end

    def calculate_outcome
      @outcome = [:pass, :cross, :shot, :out_of_play_throw_in, :out_of_play_goal_kick].sample
    end

  end
end
