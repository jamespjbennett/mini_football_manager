require_relative '../base.rb'

module GameAction
  class Penalty < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} take the penalty.."
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :save => rand * 2,
        :goal => rand * 4,
        :out_of_play_goal_kick => rand * 1.5,
      }
    end

  end
end
