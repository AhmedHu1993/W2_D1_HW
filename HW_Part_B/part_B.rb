class Team

attr_reader :team_name, :players
attr_accessor :coach

def initialize(team_name, player_list, coach_name)
  @team_name = team_name
  @players = player_list
  @coach = coach_name
end

# def name()
#   return @team_name
# end
#
# def players()
#   return @players
# end
#
# def coach()
#   return @coach
# end
#
# def new_coach(new_coach_name)
#   @coach = new_coach_name
# end

end
