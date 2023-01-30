class Grains
  # method to calculate the number of grains on a square
  def self.square(num)
    raise ArgumentError if num <= 0 || num > 64

    2**(num - 1)
  end

  def self.total
    (1..64).reduce { |sum, num| sum + square(num)}
  end
end
