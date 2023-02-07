class CollatzConjecture
  def self.steps(number)
    # Raise an ArgumentError if the input number is less than or equal to 0
    raise ArgumentError if number <= 0

    # Initialize a variable "steps" to track the number of steps taken
    steps = 0

    # Use a until loop to keep repeating until the number is equal to 1
    until number == 1
      # If the number is even, divide it by 2
      # If the number is odd, multiply it by 3 and add 1
      number = if number.even?
                 number / 2
               else
                 number * 3 + 1
               end
      # Increment the steps variable by 1 each iteration
      steps += 1
    end

    # Return the number of steps taken after the loop has finished
    steps
  end
end
