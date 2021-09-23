require_relative '../base.rb'

module GameAction
  class HeaderInPlay < Base

    def play
      establish_dual_winner
      commentary
      calculate_outcome
    end

    def commentary
      p "#{@possession_team[:name]} wins the header"
    end

    # BEFORE TEAM LOGIC - assign random chance who wins the header
    def establish_dual_winner
      shuffled_teams = [@possession_team, @non_possession_team].shuffle
      @possession_team = shuffled_teams[0]
      @non_possession_team = shuffled_teams[1]
    end

    def calculate_outcome
      @outcome = [:header_in_play, :out_of_play_throw_in, :ball_interception, :ball_control].sample
    end

  end
end
