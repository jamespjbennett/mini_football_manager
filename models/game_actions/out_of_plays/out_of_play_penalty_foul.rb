require_relative '../base.rb'

module GameAction
  class OutOfPlayPenaltyFoul < Base

    def play
      commentary
      calculate_outcome
      terminate_sequence(@outcome)
    end

    def commentary
      p "Foul by #{@non_possession_team[:name]}! Penalty to #{@possession_team[:name]} "
    end

    def calculate_outcome
      @outcome = :penalty
    end
  end
end
