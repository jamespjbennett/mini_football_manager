require_relative '../base.rb'

module GameAction
  class Tackle < Base
    def play
      commentary
      swap_possession_team
      calculate_outcome
    end

    def print_commentary_text
      p "#{@non_possession_team[:name]} with the tackle!"
    end

    def calculate_outcome
      @outcome =  [:dribble, :pass, :shot].sample
    end

    def swap_possession_team
      @non_possession_team, @possession_team = @possession_team, @non_possession_team
    end
  end
end
