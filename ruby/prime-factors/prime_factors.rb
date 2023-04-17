class PrimeFactors
  def self.of(number)
    factors = []  # Initialize an empty array to hold the prime factors.
    divisor = 2   # Initialize the divisor to 2, the smallest prime number.

    while number > 1 # Keep looping until the number is fully factored into primes.
      while (number % divisor).zero? # Check if the number is evenly divisible by the current divisor.
        factors << divisor # If so, add the divisor to the array of factors.
        number /= divisor # Divide the number by the divisor to reduce it.
      end
      divisor += 1 # Move on to the next potential divisor.
    end

    factors  # Return the array of prime factors.
  end
end

