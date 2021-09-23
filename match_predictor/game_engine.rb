class GameEngine 

    PROBABILITY_SAMPLE_SIZE = 10

    def initialize(team_1, team_2)
        @team_1 = team_1
        @team_2 = team_2
        @goals = {@team_1[:name] => 0, @team_2[:name] => 0}
    end

    def play_game
        teams.each do |team|
            opposition = get_opposition_team(team)
            team_goals = generate_score(team,opposition)
            increment_goals_for(team, team_goals)
            increment_goals_against(opposition, team_goals)          
        end

        if result_type == :win 
            increment_points(winning_team, 3) 
        else 
            increment_points(@team_1, 1)  
            increment_points(@team_2, 1)  
        end
        p "#{@team_1[:name]} #{@goals[@team_1[:name]]} #{@team_2[:name]} #{@goals[@team_2[:name]]}"
    end

    def teams 
        [@team_1, @team_2]
    end

    def get_opposition_team(team)
        defending_team_index = teams.index(team) - 1
        defending_team = teams[defending_team_index]  
        defending_team     
    end

    def result_type 
        return :draw if @goals.values.uniq == 1
        :win 
    end

    def winning_team 
        team_name = @goals.key(@goals.values.max)
        teams.find{|team| team[:name] == team_name }
    end
    
    def increment_points(team, points)
        team[:points] += points
    end
    
    def increment_goals_for(team, gf)
        team[:gf] += gf
        @goals[team[:name]] += gf
    end
    
    def increment_goals_against(team, ga)
        team[:ga] += ga
    end
    
    def generate_score(attacking_team,defending_team)
        total_goals = goal_total_by_probability(attacking_team, :attack, 1.5)
        minus_defence = goal_total_by_probability(defending_team, :defence, 1.3)
        goals_minus_defence = total_goals - minus_defence
        return 0 unless goals_minus_defence.positive?
        goals_minus_defence
    end

    def goal_total_by_probability(team, phase, multiplier_value)
        possible_goal_pool = 0
        PROBABILITY_SAMPLE_SIZE.times { possible_goal_pool += (team[phase] * rand * multiplier_value)}
        total_goals = (possible_goal_pool/PROBABILITY_SAMPLE_SIZE).round
    end
end