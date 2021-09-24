require_relative '../base.rb'

module GameAction
  class BallInterception < Base

    def play
      commentary
      swap_possession_team
      calculate_outcome
    end

    def print_commentary_text
      p "#{@non_possession_team[:name]} intercept the ball"
    end

    def calculate_outcome
      @outcome = [:pass, :dribble].sample
    end

  end
end
