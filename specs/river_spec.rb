require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Marty McFly")
    fish2 = Fish.new("Astro Boy")
    fish3 = Fish.new("Smelly Cat")
    fish4 = Fish.new("Stankonia")
    fish5 = Fish.new("Juicy J")

    @river = River.new("Amazon", [fish1, fish2, fish3, fish4, fish5])
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_how_many_fish
    assert_equal(5, @river.fish_count)
  end

  def test_remove_fish
    @river.lose_fish
    assert_equal(4, @river.fish_count)
  end

end
