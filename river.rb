class River

  attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def river_fish_count
    return @fish.length
  end

  def add_to_river(fish)
    @fish << fish
  end

  def remove_fish()
    return @fish.pop()
  end

end
