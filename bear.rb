class Bear

attr_reader :name, :type

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = stomach || []
  end

  def eat_fish(river)
    fish = river.lose_fish
    @stomach.push(fish)
  end

  def food_count
    @stomach.count
  end

  def roar
    return "ROAR."
  end

end
