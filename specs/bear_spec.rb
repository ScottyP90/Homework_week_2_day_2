require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test



  def setup
    @bear = Bear.new("Hob", "Polar")
    @river = River.new("Styx")
    @fish1 = Fish.new("Gorge")
    @fish2 = Fish.new("Ned")
    @fish3 = Fish.new("Zod")

    @fishs = [@fish1, @fish2, @fish3]
  end

  def test_stomach_count
    count = @bear.stomach_count
    assert_equal(0, count)
  end

  def test_eat_fish_from_river
    river = River.new("Styx")
    fish = Fish.new("Hades")
    river.add_to_river(fish)
    @bear.eat_fish(river)
    assert_equal(1, @bear.stomach_count())
    assert_equal(0, @river.river_fish_count())
  end

  def test_bear_roar
    roar = @bear.bear_roar
    assert_equal("Rooooaaaarrr!!", roar)
  end
end
