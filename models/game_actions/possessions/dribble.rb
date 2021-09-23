require_relative '../base.rb'

module GameAction
  class Dribble < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} take a dribble"
    end

    def calculate_outcome
      @outcome = [:pass, :tackle, :out_of_play_free_kick_foul, :out_of_play_penalty_foul].sample
    end

  end
end
