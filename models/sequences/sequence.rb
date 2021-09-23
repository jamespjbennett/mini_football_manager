require_relative '../game_actions/set_plays/goal_kick.rb'
require_relative '../game_actions/game_action_outcomes.rb'

class Sequence

  attr_accessor :new_action

  def initialize(possession_team = nil, non_possession_team = nil, new_action = nil)
    @possession_team = possession_team
    @non_possession_team = non_possession_team
    @in_play = true
    @new_action = new_action
    @actions = []
  end

  def play
    until @in_play == false
      current_action = instantiate_start_action
      current_action.play
      @new_action = current_action.outcome
      @possession_team, @non_possession_team = current_action.possession_team, current_action.non_possession_team
      log_action(current_action)
    end
  end

  def terminate(updated_new_action)
    @new_action = updated_new_action
    @in_play = false
  end

  def log_action(current_action)
    @actions.push({team: @possession_team[:name], action: current_action.to_s.scan(/::([^"]*):/).flatten[0].downcase})
    @actions = @actions
  end

  def instantiate_start_action
    return kick_off unless @new_action
    GameAction::GameActionOutcomes.send(@new_action).new(@possession_team, @non_possession_team, self, false)
  end


  def kick_off
    GameAction::GameActionOutcomes.kick_off.new(@possession_team, @non_possession_team, self, false)
  end

  def possession_team
    @possession_team
  end

  def non_possession_team
    @non_possession_team
  end

  def new_action
    @new_action
  end

  def actions
    @actions
  end

end
