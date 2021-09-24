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
      @outcome = [:shot, :clearance, :pass, :out_of_play_corner, :ball_control, :ball_interception, :goalkeeper_throw, :goalkeeper_in_play_kick].sample
    end
  end
end
