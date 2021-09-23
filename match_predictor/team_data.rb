require './models/player.rb'
require './models/position.rb'

module TeamData

    def goalkeeper
      Position.new("Goalkeeper")
    end

    def full_back
      Position.new("Full back")
    end

    def centre_back
      Position.new("Centre back")
    end

    def defensive_midfielder
      Position.new("Defensive Midfielder")
    end

    def attacking_midfielder
      Position.new("Attacking Midfielder")
    end

    def striker
      Position.new("Striker")
    end

    def self.teams
        [
            {
                name: "Man United",
                defence:8.125,
                attack: 8.25,
                points: 0,
                gf: 0,
                ga:0,
                players: [
                    Player.new("De Gea", 5, 8),
                    Player.new("Wan Bissaka", 6, 8),
                    Player.new("Shaw", 8, 7.5),
                    Player.new("Maguire", 7.5, 8.5),
                    Player.new("Varane", 6.5, 9),
                    Player.new("Mctominay", 7.5, 8),
                    Player.new("Fred", 6, 7.5),
                    Player.new("Pogba", 8.5, 7),
                    Player.new("Fernandes", 9, 6),
                    Player.new("Greenwood", 8, 5),
                    Player.new("Ronaldo", 9, 3),
                ]
            },
            {
                name: "Man City",
                defence:8.125,
                attack: 9,
                points: 0,
                gf: 0,
                ga:0,
                players: [
                  Player.new("Ederson", 2.5, 8),
                  Player.new("Walker", 5, 7),
                  Player.new("Cancelo", 5, 7),
                  Player.new("Dias", 4, 9),
                  Player.new("Stones", 3, 8),
                  Player.new("Rodri", 6, 6),
                  Player.new("Gundogan", 7, 5),
                  Player.new("De Bruyne", 8, 5),
                  Player.new("Grealish", 8, 2),
                  Player.new("Sterling", 8, 2),
                  Player.new("Jesus", 7, 3),
                ]
            },
            {
                name: "Liverpool",
                defence:8.125,
                attack: 8.25,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Chelsea",
                defence:8.875,
                attack: 8.25,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Spurs",
                defence:7.6875,
                attack: 7.875,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Leicester",
                defence:7.6875,
                attack: 7.875,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Arsenal",
                defence:6.8125,
                attack: 7.5,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Villa",
                defence:6.8125,
                attack: 7.5,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Burnley",
                defence:5.937,
                attack: 6.75,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "West Ham",
                defence:6.8125,
                attack: 7.5,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Watford",
                defence:5.5,
                attack: 6.75,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Everton",
                defence:6.8125,
                attack: 7.5,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Brighton",
                defence:5.937,
                attack: 7.125,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Brentford",
                defence:6.8125,
                attack: 6.75,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Southampton",
                defence:6.8125,
                attack: 7.125,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Palace",
                defence:6.8125,
                attack: 7.125,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Leeds",
                defence:6.8125,
                attack: 7.5,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Newcastle",
                defence:6.8125,
                attack: 6.375,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Wolves",
                defence:5.937,
                attack: 7.125,
                points: 0,
                gf: 0,
                ga:0
            },
            {
                name: "Norwich",
                defence:6.8125,
                attack: 6,
                points: 0,
                gf: 0,
                ga:0
            },
        ]
    end
end
