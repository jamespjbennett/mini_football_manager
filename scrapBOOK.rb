require_relative "./models/sequences/sequence.rb"
require_relative "./team_data.rb"

teams = TeamData::teams
team1 = teams.sample
team2 = teams.sample
s = Sequence.new(team1, team2)
108.times do |i|
  s.play
  new_action = s.new_action
  possession_team = s.possession_team
  non_possession_team = s.non_possession_team
  s = Sequence.new(possession_team, non_possession_team, new_action)
end
