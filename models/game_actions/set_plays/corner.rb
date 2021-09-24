require_relative '../base.rb'

module GameAction
  class Corner < Base

    def play
      commentary
      calculate_outcome
    end

    def print_commentary_text
      p "#{@possession_team[:name]} take the corner"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :out_of_play_penalty_foul => rand * 1.5,
        :attacking_header => rand * 2.25,
        :defensive_header => rand * 3,
        :shot => rand * 1.75,
        :pass => rand * 1.75,
      }
    end


  end
end
