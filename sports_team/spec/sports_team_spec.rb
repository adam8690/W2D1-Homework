require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

def test_get_team_name
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  assert_equal("Aberdeen FC", team.team_name)
end

def test_name_getter_method
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  name = team.team_name
  assert_equal("Aberdeen FC", name)
end

def test_players_getter_method
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  players = team.players
  assert_equal(["Peter Pawlett", "Jonny Hayes"], players)
end

def test_manager_getter_method
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  manager = team.coach
  assert_equal("Derek McInnes", manager)
end

def test_manager_setter
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  team.new_manager("Adam Baxter")
  assert_equal("Adam Baxter", team.coach)
end

def test_add_player
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  team.new_player("Thierry Henry")
  assert_equal(["Peter Pawlett", "Jonny Hayes", "Thierry Henry"], team.players)
end

def test_points_tally_win
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  team.new_result("w")
  assert_equal(3, team.points)
end

def test_points_tally_lose
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  team.new_result("l")
  assert_equal(0, team.points)
end

def test_points_tally_draw
  team = SportsTeam.new("Aberdeen FC", ["Peter Pawlett", "Jonny Hayes"], "Derek McInnes", 0)
  team.new_result("d")
  assert_equal(1, team.points)
end

end