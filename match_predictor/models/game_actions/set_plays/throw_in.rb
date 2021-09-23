require_relative '../base.rb'

module GameAction
  class ThrowIn < Base

    def play
      commentary
      calculate_outcome
    end

    def commentary
      p "#{@possession_team[:name]} takes the throwin"
    end

    def calculate_outcome
      @outcome = [:ball_interception, :ball_control, :header_in_play].sample
    end

  end
end
