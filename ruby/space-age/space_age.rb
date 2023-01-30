class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31_557_600.0

  PLANET_ORBITAL_PERIODS = {
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds / EARTH_YEAR_IN_SECONDS
  end

  PLANET_ORBITAL_PERIODS.each do |planet, period|
    define_method("on_#{planet}") do
      on_earth / period
    end
  end
end
