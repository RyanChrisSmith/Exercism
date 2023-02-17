class PerfectNumber
  # Define a class method that takes an integer as input and returns a string
  # representing whether the integer is perfect, abundant, or deficient
  def self.classify(number)
    # Raise an exception if the input number is less than 1
    raise RuntimeError if number < 1

    # Compute the sum of the proper divisors of the input number (i.e., the factors
    # of the number that are less than the number itself)
    sum = (1...number).select { |i| number % i == 0 }.sum

    # Classify the input number based on its aliquot sum (i.e., the sum of its proper divisors)
    if sum == number
      'perfect'
    elsif sum < number
      'deficient'
    else
      'abundant'
    end
  end
end