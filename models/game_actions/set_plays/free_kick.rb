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
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :pass => rand * 2.5,
        :cross => rand * 2,
        :shot => rand * 1.5,
        :goal => rand * 1.25,
        :out_of_play_throw_in => rand * 1.25,
        :out_of_play_goal_kick => rand * 1.75,
      }
    end

  end
end
