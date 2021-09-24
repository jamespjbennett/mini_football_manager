require_relative '../base.rb'

module GameAction
  class Goal < Base

    def play
      commentary
      calculate_outcome
      swap_possession_team
      terminate_sequence(:kick_off)
    end

    def print_commentary_text
      p "GGGOOOAAALLL FOR #{@possession_team[:name]}"
    end

    def calculate_outcome
      @outcome = :kick_off
    end
  end
end
