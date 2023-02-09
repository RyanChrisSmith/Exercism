class Prime
  def self.nth(nth_prime)
    # Raise an error if the input is less than 1
    raise ArgumentError if nth_prime < 1

    # Initialize an array to store prime numbers
    prime_numbers = [2]
    # Start checking for prime numbers from 3
    current_number = 3

    # Keep looping until we have n prime numbers
    while prime_numbers.length < nth_prime
      is_prime = true
      prime_numbers.each do |prime|
        # We can break out of the loop if the prime is greater than the square root of current number
        break if prime > Math.sqrt(current_number)

        # If the current number is divisible by the prime, it's not a prime number
        if (current_number % prime).zero?
          is_prime = false
          break
        end
      end
      # If the current number is a prime number, add it to the list of prime numbers
      prime_numbers << current_number if is_prime
      # Increment the current number by 2 (as we only need to check for odd numbers)
      current_number += 2
    end
    # Return the nth prime number
    prime_numbers.last
  end
end