require_relative '../base.rb'

module GameAction
  class Shot < Base
    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "shot by #{@possession_team[:name]}.."
    end

    def calculate_outcome
      @outcome = [:goal, :save].sample
    end
  end
end
