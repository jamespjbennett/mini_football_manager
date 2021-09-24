require_relative '../base.rb'

module GameAction
  class OutOfPlayThrowIn < Base

    def play
      swap_possession_team
      commentary
      calculate_outcome
      terminate_sequence(@outcome)
    end

    def print_commentary_text
      p "Ball goes out of play. Throw in to #{@possession_team[:name]} "
    end

    def calculate_outcome
      @outcome = :throw_in
    end
  end
end
