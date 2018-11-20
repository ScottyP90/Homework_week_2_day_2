class Bear

  attr_reader :name, :type, :shomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count
    @stomach.length
  end

  def eat_fish(river)
    fish = river.remove_fish()
    @stomach.push(fish)
  end

  def bear_roar
    return "Rooooaaaarrr!!"
  end

end
