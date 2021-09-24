require_relative '../base.rb'

module GameAction
  class DefensiveHeader < Base
    def play
      commentary
      swap_possession_team
      calculate_outcome
    end

    def print_commentary_text
      p "#{@non_possession_team[:name]} with the defensive header"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :ball_interception => rand * 1,
        :ball_control => rand * 1,
        :header_in_play => rand * 1,
      }
    end
  end
end


# a way to immediately swap possession team to have a follow up shot?
