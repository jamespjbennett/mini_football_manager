require_relative '../base.rb'

module GameAction
  class Cross < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} with the cross!"
    end

    def calculate_outcome
      @outcome =  [:shot,:attacking_header,:defensive_header,:ball_interception].sample
    end
  end
end
