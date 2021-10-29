require_relative '../base.rb'

module GameAction
  class HeaderInPlay < Base

    def play
      establish_dual_winner
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} wins the header"
    end

    # BEFORE TEAM LOGIC - assign random chance who wins the header
    def establish_dual_winner
      shuffled_teams = [@possession_team, @non_possession_team].shuffle
      @possession_team = shuffled_teams[0]
      @non_possession_team = shuffled_teams[1]
    end  

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :header_in_play => rand * 1.5,
        :out_of_play_throw_in => rand * 1.5,
        :ball_interception => rand * 2,
        :ball_control => rand * 2.5,
      }
    end

  end
end
