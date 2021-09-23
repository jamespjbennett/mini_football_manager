require_relative "./models/sequences/sequence.rb"
require_relative "./team_data.rb"

teams = TeamData::teams
team1 = teams.sample
team2 = teams.sample

@total_actions = { team1[:name] => {},team2[:name] =>  {}}

def iterate_actions(sequence_actions)
  sequence_actions.each do |action|
    @total_actions[action[:team]][action[:action]] = 0 unless @total_actions[action[:team]][action[:action]]
    @total_actions[action[:team]][action[:action]] += 1
  end
end


s = Sequence.new(team1, team2)
108.times do |i|
  s.play
  iterate_actions(s.actions)
  new_action = s.new_action
  possession_team = s.possession_team
  non_possession_team = s.non_possession_team
  s = Sequence.new(possession_team, non_possession_team, new_action)
end



p "#{@total_actions.keys.first}:....."
first_team_actions = @total_actions[@total_actions.keys.first]
first_team_actions.each do |action,count|
  p "#{action} : #{count}"
end
p "#{@total_actions.keys.last}:....."
second_team_actions = @total_actions[@total_actions.keys.last]
second_team_actions.each do |action,count|
  p "#{action} : #{count}"
end
