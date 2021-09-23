require_relative '../base.rb'

module GameAction
  class Corner < Base

    def play
      commentary
      calculate_outcome
    end

    def commentary
      p "#{@possession_team[:name]} take the corner"
    end

    def calculate_outcome
      @outcome = [:out_of_play_free_kick_foul, :out_of_play_penalty_foul,:attacking_header, :defensive_header, :shot, :pass].sample
    end


  end
end
