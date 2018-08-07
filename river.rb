class River

  attr_reader :name
  attr_writer :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes || []
  end

  def get_fish
    @fishes.pop
  end

  def fish_count
    @fishes.count
  end

end
