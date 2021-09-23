require_relative '../base.rb'

module GameAction
  class Pass < Base

    def play
      commentary
      calculate_outcome
    end

    def commentary
      p "#{@possession_team[:name]} plays the pass"
    end

    def calculate_outcome
      @outcome =  [:ball_interception, :pass, :dribble, :cross, :out_of_play_throw_in, :out_of_play_free_kick_foul, :out_of_play_penalty_foul].sample
    end

  end
end
