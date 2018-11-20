class Fish

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def fish_count
    return @name.count
  end

end
