class BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError if input_base < 2 || output_base < 2
    raise ArgumentError if digits.any? { |digit| digit.negative? || digit >= input_base }

    # Convert the digits from the input base to base 10
    decimal = 0
    # Loop through each digit in the array
    digits.reverse.each_with_index do |digit, index|
      # Calculate the value of the current digit in base 10
      digit_value = digit * (input_base ** index)
      # Add the value of the current digit to the decimal value
      decimal += digit_value
    end

    # Convert the decimal to the output base
    output_digits = []
    until decimal == 0
      output_digits << decimal % output_base
      decimal /= output_base
    end

    # Handle the case where the output is 0.
    output_digits.empty? ? [0] : output_digits.reverse
  end
end
