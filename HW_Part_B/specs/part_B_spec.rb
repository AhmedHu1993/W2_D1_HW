require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../part_B')

class TestStudent < MiniTest::Test

def test_team_name()
  team = Team.new('Edinburgh Warriors', ['Boris', 'Morris'], 'Jaundis')
  assert_equal('Edinburgh Warriors', team.team_name())
end

def test_players()
  team = Team.new('Edinburgh Warriors', ['Boris', 'Morris'], 'Jaundis')
  assert_equal(['Boris', 'Morris'], team.players())
end

def test_coach()
  team = Team.new('Edinburgh Warriors', ['Boris', 'Morris'], 'Jaundis')
  assert_equal('Jaundis', team.coach())
end

def test_change_coach_name()
  team = Team.new('Edinburgh Warriors', ['Boris', 'Morris'], 'Jaundis')
  team.coach = 'Mark'
  assert_equal('Mark', team.coach())
end

end
