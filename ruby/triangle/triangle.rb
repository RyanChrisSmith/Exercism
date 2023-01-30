class Triangle
  def initialize(dimensions)
    @dimensions = dimensions
    @side1, @side2, @side3 = dimensions
  end

  def valid?
    !@dimensions.any?(0) && (@side1 + @side2 >= @side3) && (@side1 + @side3 >= @side2) && (@side2 + @side3 >= @side1)
  end

  def equilateral?
    valid? && (@side1 == @side2 && @side2 == @side3)
  end

  def isosceles?
    valid? && (@side1 == @side2 || @side1 == @side3 || @side2 == @side3)
  end

  def scalene?
    valid? && (@side1 != @side2 && @side2 != @side3 && @side1 != @side3)
  end
end