require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FistTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Marty McFly")
    @fish2 = Fish.new("Astro Boy")
    @fish3 = Fish.new("Smelly Cat")
    @fish4 = Fish.new("Stankonia")
    @fish5 = Fish.new("Juicy J")
  end

  def test_has_name
    assert_equal("Marty McFly", @fish1.name)
  end

  def test_has_name2
    assert_equal("Astro Boy", @fish2.name)
  end

end
