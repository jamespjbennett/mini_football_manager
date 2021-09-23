require_relative "./team_data.rb"
require_relative "./game_engine.rb"

teams = TeamData::teams
team_names = teams.map{|team| team[:name]}
fixture_pairs = team_names.permutation(2).to_a.map{|pair| pair.sort}.uniq

2.times do 
    fixture_pairs.each do |fixture_teams|
        team_1 = teams.find {|team| team[:name] == fixture_teams[0]}
        team_2 = teams.find {|team| team[:name] == fixture_teams[1]}
        game_engine = GameEngine.new(team_1, team_2)
        game_engine.play_game
    end
end

p "______________________________________"
p "FINAL TABLE"
p "                      "
team_count = 1
max_team_name_length = 20
teams.sort_by{|point| point[:points]}.reverse.each do |team|
    number_of_spaces = max_team_name_length-team[:name].length
    p "#{team_count}. #{team[:name]}#{" " * number_of_spaces}    #{team[:points]}   #{team[:gf]}    #{team[:ga]} "
    team_count += 1
end










