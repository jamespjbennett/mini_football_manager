require_relative '../base.rb'

module GameAction
  class BallControl < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} controlls the ball"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :dribble => rand * 2,
        :pass => rand * 4,
        :out_of_play_free_kick_foul => rand * 1.5,
        :out_of_play_penalty_foul => rand * 0.5,
        :tackle => rand * 1.75
      }
    end

  end
end
