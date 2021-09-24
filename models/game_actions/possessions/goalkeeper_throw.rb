require_relative '../base.rb'

module GameAction
  class GoalkeeperThrow < Base

    def play
      swap_possession_team
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} GK kicks the ball out"
    end

    def calculate_outcome
      @outcome = [:out_of_play_throw_in, :ball_control, :ball_interception, :header_in_play].sample
    end

  end
end
