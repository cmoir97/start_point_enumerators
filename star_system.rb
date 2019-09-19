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



end
