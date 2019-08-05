require('minitest/autorun')
require('minitest/rg')
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

  def test_add_new_player()
    team = Team.new('Edinburgh Warriors', ['Boris', 'Morris'], 'Jaundis')
    team.add_new_player('PeterPan')
    assert_equal(['Boris', 'Morris', 'PeterPan'], team.players())
  end

  def test_if_player_in_the_players_list()
    team = Team.new('Edinburgh Warriors', ['Boris', 'Morris'], 'Jaundis')
    assert_equal(false, team.check_player('Shikabala'))
  end

  def test_points_of_team_after_result()
    team = Team.new('Edinburgh Warriors', ['Boris', 'Morris'], 'Jaundis')
    team.update_points('Edinburgh Warriors', 'win')
    assert_equal(3, team.points)
  end
end
