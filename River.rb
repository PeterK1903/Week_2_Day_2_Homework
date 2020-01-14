class River
  attr_accessor :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.length()
  end

  def add_fish(fish)
    @fish.push(fish)
  end

  def remove_fish(fish)
    @fish.delete(fish)
  end

end
