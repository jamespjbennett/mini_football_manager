require_relative '../base.rb'

module GameAction
  class KickOff < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} with the kick off"
    end

    def calculate_outcome
      @outcome = :pass
    end

  end
end
