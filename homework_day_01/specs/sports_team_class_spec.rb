require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team_class')

class TestTeam < MiniTest::Test

def test_team_name
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  assert_equal("Dundee United", team.team_name())
end

def test_players
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  assert_equal(["Paddy Connolly", "Craig Brewster", "Christian Dailly"], team.players())
end

def test_coach
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  assert_equal("Ivan Golac", team.coach())
end

def test_set_coach_name
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  team.change_coach_name("Billy Kirkwood")
  assert_equal("Billy Kirkwood", team.coach())
end

def test_add_new_player
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  team.add_new_player("Brian Welsh")
  assert_equal(["Paddy Connolly", "Craig Brewster", "Christian Dailly", "Brian Welsh"], team.players)
end

def test_check_if_player_is_in_team__yes
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  assert_equal(true, team.check_if_player_is_in_team("Craig Brewster"))
end

def test_check_if_player_is_in_team__no
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  assert_equal(false, team.check_if_player_is_in_team("David Hannah"))
end

def test_number_of_points
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  assert_equal(0, team.number_of_points)
end

def test_win_or_lose
  team = Team.new("Dundee United", ["Paddy Connolly", "Craig Brewster", "Christian Dailly"], "Ivan Golac")
  assert_equal(3, team.win_or_lose("win"))
end

end
