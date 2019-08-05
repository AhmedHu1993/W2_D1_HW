class Team

  attr_reader :team_name, :players
  attr_accessor :coach, :points

  def initialize(team_name, player_list, coach_name)
    @team_name = team_name
    @players = player_list
    @coach = coach_name
    @points = 0
  end

  def add_new_player(new_player_name)
    @players.push(new_player_name)
  end

  def check_player(player_name)
    @players.include?(player_name)
  end

  def update_points(team_name, result)
    @points += 1 if result == 'draw'
    @points += 3 if result == 'win'
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
