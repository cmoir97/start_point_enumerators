class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    p  @planets.map { |planet| planet.name}
  end

  def get_planet_by_name(name)
    p  @planets.find { |planet| planet.name == name}
  end

  def get_largest_planet
    p @planets.find { |planet| planet.diameter > 140000 }
  end

  def get_smallest_planet
    p @planets.find { |planet| planet.diameter < 2500 }
  end

  def get_planets_with_no_moons
    p @planets.find_all { |planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(moons)
    planets_with_more_than_four_moons = @planets.find_all { |planet| planet.number_of_moons > moons}

    p  planets_with_more_than_four_moons.map { |planet| planet.name}
  end



end
