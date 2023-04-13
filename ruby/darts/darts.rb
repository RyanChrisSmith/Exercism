class Darts
  attr_reader :x,
              :y

  def initialize(x_coordinate, y_coordinate)
    @x = x_coordinate
    @y = y_coordinate
  end

  def score
    distance = Math.sqrt(x**2 + y**2)

    case distance
    when 0..1 then 10
    when 1..5 then 5
    when 5..10 then 1
    else 0
    end
  end
end