require_relative '../base.rb'

module GameAction
  class Goal < Base

    def play
      p "GGGOOOAAALLL FOR #{@possession_team[:name]}"
      terminate_sequence(:kick_off)
    end
  end
end
