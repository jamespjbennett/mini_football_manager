require_relative '../base.rb'

module GameAction
  class Pass < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} plays the pass"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :ball_interception => rand * 1.5,
        :pass => rand * 5.75,
        :dribble => rand * 2,
        :cross => rand * 1.25,
        :out_of_play_throw_in => rand * 1.55,
        :out_of_play_free_kick_foul => rand * 1.5,
        :out_of_play_penalty_foul => rand * 0.5
      }
    end


  end
end
