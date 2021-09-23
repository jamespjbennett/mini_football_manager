require_relative '../base.rb'

module GameAction
  class Clearance < Base

    def play
      swap_possession_team
      commentary
      calculate_outcome
    end

    def commentary
      p "#{@possession_team[:name]} hoofs the ball clear"
    end

    def swap_possession_team
      @non_possession_team, @possession_team = @possession_team, @non_possession_team
    end

    def calculate_outcome
      @outcome = [:out_of_play_throw_in, :header_in_play, :ball_control, :ball_interception].sample
    end

  end
end
