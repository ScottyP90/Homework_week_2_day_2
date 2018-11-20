require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Gorge")
    @fish2 = Fish.new("Ned")
    @fish3 = Fish.new("Zod")

  end

  def test_fish_count
    count = @fish.fish_count
    assert_equal(3, count)
  end


end
