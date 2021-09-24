require_relative "./models/sequences/sequence.rb"
require_relative "./team_data.rb"


total_goals = 0
total_penalties = 0
attacking_headers = 0
corners = 0
throwins = 0
passes = 0
crosses = 0

38.times do
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

  first_team_actions = @total_actions[@total_actions.keys.first]
  second_team_actions = @total_actions[@total_actions.keys.last]
  p "#{@total_actions.keys.first} #{first_team_actions["goal"] || 0} #{@total_actions.keys.last} #{second_team_actions["goal"] || 0}"
  p "****************************************************************************************"
  p "total shots: #{ (first_team_actions["shot"] || 0) +  (second_team_actions["shot"] || 0)}"
  p "total attacking headers: #{ (first_team_actions["attackingheader"] || 0) + (second_team_actions["attackingheader"] || 0)}"
  p "total pens: #{(first_team_actions["penalty"] || 0) + (second_team_actions["penalty"] || 0)}"
  p "total pens: #{(first_team_actions["penalty"] || 0) + (second_team_actions["penalty"] || 0)}"
  total_goals += (first_team_actions["goal"] || 0 )
  total_penalties += (first_team_actions["penalty"] || 0 )
  attacking_headers +=  (first_team_actions["attackingheader"] || 0 )
  corners +=  (first_team_actions["corner"] || 0 )
  throwins +=  (first_team_actions["throwin"] || 0 )
  passes +=  (first_team_actions["pass"] || 0 )
  crosses +=  (first_team_actions["cross"] || 0 )

end

p "TOTAL GOALS OVER 38 GAMES IS #{total_goals} (51 average)" # AV 51
p "TOTAL PENS OVER 38 GAMES IS #{total_penalties} (6 average)" # AV 6
p "TOTAL CORNERS OVER 38 GAMES IS #{corners} (228 average)" # AV 209
p "TOTAL throwins OVER 38 GAMES IS #{throwins} (760 average)" # AV 760
p "TOTAL passes OVER 38 GAMES IS #{passes} (15-16k average average)" # AV 15,846
p "TOTAL crosses OVER 38 GAMES IS #{crosses} (760 average)" # 760
