require_relative '../base.rb'

module GameAction
  class OutOfPlayCorner < Base

    def play
      commentary
      calculate_outcome
      terminate_sequence(@outcome)
    end

    def commentary
      p "Ball goes out of play. Corner to #{@possession_team[:name]} "
    end

    def calculate_outcome
      @outcome = :corner
    end
  end
end
