class SportsTeam
  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  attr_accessor :team_name, :players, :coach, :points

# def name
#   return @team_name
# end

# def players
#   return @players
# end

# def manager
#   return @coach
# end

def new_manager(new_manager)
return @coach = new_manager
end

def new_player(name)
  return @players.push(name)
end

def new_result(wld)
  case 
  when wld == "w"
    return @points += 3
  when wld == "l"
    return @points
  when wld = "d"
    return @points += 1
  end
end
end
