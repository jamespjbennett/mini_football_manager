module GameAction
  class Base
    def initialize(possession_team = nil, non_possession_team = nil, sequence)
      @possession_team = possession_team
      @non_possession_team = non_possession_team
      @sequence = sequence
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
