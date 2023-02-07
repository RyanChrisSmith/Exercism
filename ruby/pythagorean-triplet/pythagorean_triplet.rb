class Triplet
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a**2 + b**2 == c**2
  end

  def self.where(min_factor: 1, max_factor: nil, sum: nil)
    triplets = []
    # loop through all numbers in range [min_factor, max_factor]
    (min_factor..max_factor).each do |a|
      # loop through all numbers greater than a in the range [a + 1, max_factor]
      ((a + 1)..max_factor).each do |b|
        # calculate c using Pythagorean theorem
        c = Math.sqrt(a**2 + b**2)
        # if c > max_factor or c is not an integer, skip this iteration
        next if c > max_factor || c.to_i != c

        # create a triplet using the calculated values of a, b and c
        triplet = new(a, b, c.to_i)
        # if sum is not specified or triplet's sum is equal to the specified sum,
        # add triplet to the list of triplets
        triplets << triplet if sum.nil? || triplet.sum == sum
      end
    end
    # return the final list of triplets
    triplets
  end
end




