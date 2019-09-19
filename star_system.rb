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

def get_number_of_planets_closer_than(distance)
  number_of_planets =  @planets.find_all { |planet| planet.distance_from_sun < distance }
  p number_of_planets.length
end

def get_total_number_of_moons
  p @planets.reduce(0) { |sum, planet| sum + planet.number_of_moons }
end

def get_planet_names_sorted_by_increasing_distance_from_sun
 sorted_array = @planets.sort { |planet_a, planet_b| planet_a.distance_from_sun <=> planet_b.distance_from_sun }
 p  sorted_array.map { |planet| planet.name}

end












end
