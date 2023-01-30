class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    (1...limit).select { |num| multiple_of_any_factor?(num) }.sum
  end

  private

  def multiple_of_any_factor?(num)
    @factors.any? { |factor| (num % factor).zero? }
  end
end