class Palindromes
  # Define a struct to represent a palindrome
  Palindrome = Struct.new(:value, :factors)

  # Initialize the class with min and max factors
  def initialize(**factors)
    # Set the minimum factor to 1 if not provided
    @min = factors[:min_factor] || 1
    # Store the maximum factor as an instance variable
    @max = factors[:max_factor]
    # Initialize an empty hash to store the palindromes and their factors
    @palindromes = Hash.new { |hash, key| hash[key] = [] }
  end

  # Generate all the palindromes from the provided factors
  def generate
    # Use `repeated_combination` to generate all possible pairs of factors
    [*@min..@max].repeated_combination(2).each do |pair|
      # Multiply the pair to get the product
      product = pair.reduce(:*)
      # Check if the product is a palindrome
      if palindrome?(product)
        # If the product is a palindrome, store it in the hash along with its factors
        @palindromes[product] << pair
      end
    end
    @palindromes
  end

  # Return the largest palindrome
  def largest
    # Use the `max` method to get the key (palindrome) with the maximum value
    # and pass the key and value to the `Palindrome` struct
    Palindrome.new(*@palindromes.max)
  end

  def smallest
    # Use the `min` method to get the key (palindrome) with the maximum value
    # and pass the key and value to the `Palindrome` struct
    Palindrome.new(*@palindromes.min)
  end

  private
  # Check if a candidate is a palindrome
  def palindrome?(candidate)
    # Check if the string representation of the candidate is equal to its reverse
    candidate.to_s == candidate.to_s.reverse
  end
end
