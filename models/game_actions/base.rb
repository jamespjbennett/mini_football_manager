module GameAction
  class Base
    def initialize(possession_team, non_possession_team, sequence, detailed_commentary = nil)
      @possession_team = possession_team
      @non_possession_team = non_possession_team
      @sequence = sequence
      @detailed_commentary = detailed_commentary
    end

    def commentary
      if self.class == GameAction::Goal
        print_commentary_text
      else
        print_commentary_text unless @detailed_commentary == false
      end
    end

    def terminate_sequence(start_action)
      @sequence.terminate(start_action)
    end

    def outcome
      @outcome
    end

    def possession_team
      @possession_team
    end

    def non_possession_team
      @non_possession_team
    end

  end
end
