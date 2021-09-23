require_relative '../base.rb'

module GameAction
  class DefensiveHeader < Base
    def play
      commentary
      swap_possession_team
      calculate_outcome
    end

    def commentary
      p "#{@non_possession_team[:name]} with the defensive header"
    end

    def swap_possession_team
      @non_possession_team, @possession_team = @possession_team, @non_possession_team
    end

    def calculate_outcome
      @outcome = [:ball_interception, :ball_control, :header_in_play, :shot].sample
    end
  end
end