require_relative "./set_plays/goal_kick.rb"
require_relative "./set_plays/throw_in.rb"
require_relative "./set_plays/corner.rb"
require_relative "./set_plays/kick_off.rb"
require_relative "./set_plays/free_kick.rb"
require_relative "./set_plays/penalty.rb"
require_relative "./headers/header_in_play.rb"
require_relative "./out_of_plays/out_of_play_throw_in.rb"
require_relative "./out_of_plays/out_of_play_goal_kick.rb"
require_relative "./out_of_plays/out_of_play_corner.rb"
require_relative "./out_of_plays/out_of_play_penalty_foul.rb"
require_relative "./out_of_plays/out_of_play_free_kick_foul.rb"
require_relative "./turnovers/ball_interception.rb"
require_relative "./turnovers/defensive_header.rb"
require_relative "./turnovers/tackle.rb"
require_relative "./turnovers/save.rb"
require_relative "./turnovers/clearance.rb"
require_relative "./possessions/ball_control.rb"
require_relative "./possessions/dribble.rb"
require_relative "./possessions/pass.rb"
require_relative "./possessions/goalkeeper_in_play_kick.rb"
require_relative "./possessions/goalkeeper_throw.rb"
require_relative "./attacks/shot.rb"
require_relative "./attacks/cross.rb"
require_relative "./attacks/goal.rb"
require_relative "./attacks/attacking_header.rb"

module GameAction
  module GameActionOutcomes

    def self.goal_kick
      GameAction::GoalKick
    end

    def self.goalkeeper_throw
      GameAction::GoalkeeperThrow
    end

    def self.goalkeeper_in_play_kick
      GameAction::GoalkeeperInPlayKick
    end

    def self.clearance
      GameAction::Clearance
    end

    def self.corner
      GameAction::Corner
    end

    def self.out_of_play_corner
      GameAction::OutOfPlayCorner
    end

    def self.dribble
      GameAction::Dribble
    end
    #
    def self.pass
      GameAction::Pass
    end
    #
    def self.shot
      GameAction::Shot
    end

    def self.goal
      GameAction::Goal
    end

    def self.save
      GameAction::Save
    end

    def self.out_of_play_goal_kick
      GameAction::OutOfPlayGoalKick
    end

    def self.ball_interception
      GameAction::BallInterception
    end

    def self.cross
      GameAction::Cross
    end

    def self.header_in_play
      GameAction::HeaderInPlay
    end

    def self.out_of_play_throw_in
      GameAction::OutOfPlayThrowIn
    end

    def self.ball_control
      GameAction::BallControl
    end
    #
    def self.tackle
      GameAction::Tackle
    end

    def self.defensive_header
      GameAction::DefensiveHeader
    end

    def self.attacking_header
      GameAction::AttackingHeader
    end

    def self.save
      GameAction::Save
    end

    def self.throw_in
      GameAction::ThrowIn
    end

    def self.kick_off
      GameAction::KickOff
    end

    def self.out_of_play_penalty_foul
      GameAction::OutOfPlayPenaltyFoul
    end

    def self.out_of_play_free_kick_foul
      GameAction::OutOfPlayFreeKickFoul
    end

    def self.free_kick
      GameAction::FreeKick
    end

    def self.penalty
      GameAction::Penalty
    end

  end
end
