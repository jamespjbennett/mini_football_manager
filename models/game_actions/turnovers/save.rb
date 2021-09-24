require_relative '../base.rb'

module GameAction
  class Save < Base
    def play
      commentary
      swap_possession_team
      calculate_outcome
    end

    def print_commentary_text
      p "#{@non_possession_team[:name]} with the save!"
    end

    def calculate_outcome
      @outcome = outcome_probability.max_by{|outcome,value| value}[0]
    end

    def outcome_probability
      {
        :clearance => rand * 1.75 ,
        :pass => rand * 1.75,
        :out_of_play_corner => rand * 2.5,
        :ball_control => rand * 1.25,
        :ball_interception => rand * 1.5,
        :goalkeeper_throw => rand * 1.5,
        :goalkeeper_in_play_kick => rand * 1.75,
      }
    end
  end
end


# a way to do follow up shot - maybe a rebound class?
