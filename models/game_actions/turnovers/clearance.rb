require_relative '../base.rb'

module GameAction
  class Clearance < Base

    def play
      swap_possession_team
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} hoofs the ball clear"
    end

    def calculate_outcome
      @outcome = [:out_of_play_throw_in, :header_in_play, :ball_control, :ball_interception].sample
    end

  end
end
