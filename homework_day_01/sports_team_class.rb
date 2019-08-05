class Team

  attr_reader :team_name, :players, :coach

def initialize(input_team_name, input_players, input_coach)
  @team_name = input_team_name
  @players = input_players
  @coach = input_coach
end

def change_coach_name(new_name)
  @coach = new_name
end

def add_new_player(player)
  @players.push(player)
end

def check_if_player_is_in_team(player_name)
  if @players.include?(player_name)
      return true
    end
    return false
  end

  def number_of_points
    @points = 0
  end

  def win_or_lose(result)
    @points = 0
    if result == "win"
      @points += 3
    end
    return @points
  end

end
