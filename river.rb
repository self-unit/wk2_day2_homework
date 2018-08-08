class River

  attr_reader :name
  attr_writer :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes || []
  end

  def lose_fish
    @fishes.pop if @fishes.length > 0
    return Fish.new("Magic Fish")
  end

  def fish_count
    @fishes.count
  end

end
