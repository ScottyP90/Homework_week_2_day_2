require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Gorge")
    @fish2 = Fish.new("Ned")
    @fish3 = Fish.new("Zod")

    @fishs = [@fish1, @fish2, @fish3]

    @river = River.new("Styx")
  end

  def test_river_fish_count
    count = @river.river_fish_count()
    assert_equal(0, count)
  end

  def test_add_to_river
    fish = Fish.new("Gorge")
    @river.add_to_river(fish)
    assert_equal(1, @river.river_fish_count)
  end

  def test_remove_fish
    fish = Fish.new("Gorge")
    @river.add_to_river(fish)
    @river.remove_fish()
    assert_equal(0,@river.river_fish_count)
  end

  def test_other_add
    @river.add_to_river(@fish1)
    assert_equal(1, @river.river_fish_count)
  end

  def test_other_remove
    @river.add_to_river(@fish1)
    @river.remove_fish()
    assert_equal(0,@river.river_fish_count)
  end
end
