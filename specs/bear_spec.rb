require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Marty McFly")
    fish2 = Fish.new("Astro Boy")
    fish3 = Fish.new("Smelly Cat")
    fish4 = Fish.new("Stankonia")
    fish5 = Fish.new("Juicy J")

    @river = River.new("Amazon", [fish1, fish2, fish3, fish4, fish5])

    @bear = Bear.new("Yogi", "Grizzly", [])
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_eat_fish_from_river
    @bear.eat_fish(@river)
    assert_equal(1, @bear.food_count)
    assert_equal(4, @river.fish_count)
  end

  def test_bear_can_roar
    assert_equal("ROAR.", @bear.roar)
  end

end
