require_relative '../base.rb'

module GameAction
  class OutOfPlayFreeKickFoul < Base

    def play
      commentary
      calculate_outcome
      terminate_sequence(@outcome)
    end

    def print_commentary_text
      p "Foul by #{@non_possession_team[:name]}! Free Kick to #{@possession_team[:name]} "
    end

    def calculate_outcome
      @outcome = :free_kick
    end
  end
end
