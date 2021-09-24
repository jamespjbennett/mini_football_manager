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
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :dribble => rand * 1.75 ,
        :pass => rand * 2,
        :shot => rand * 1.25,
      }
    end

  end
end
