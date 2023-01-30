class ArmstrongNumbers
  def self.include?(number)
    # Convert the number to a string and find the number of digits
    digits = number.to_s.length

    # Calculate the sum of the digits raised to the power of the number of digits
    sum = number.to_s.chars.map { |digit| digit.to_i ** digits }.sum

    # Return true if the sum is equal to the number, false otherwise
    sum == number
  end
end
