require_relative '../base.rb'

module GameAction
  class Dribble < Base

    def play
      commentary
      calculate_outcome
    end

    def commentary
      p "#{@possession_team[:name]} take a dribble"
    end

    def calculate_outcome
      @outcome = [:dribble, :pass, :tackle, :out_of_play_free_kick_foul, :out_of_play_penalty_foul].sample
    end

  end
end
