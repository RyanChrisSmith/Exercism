class Alphametics
  def self.solve(puzzle)
    # Extract the unique letters from the puzzle and initialize their values to nil
    letters = puzzle.scan(/[A-Z]/).uniq
    values = letters.map { |letter| [letter, nil] }.to_h

    # Generate all possible combinations of digits for the letters in the puzzle
    (0..9).to_a.permutation(letters.size) do |digits|
      # Assign the digits to the letters in the puzzle
      values = letters.zip(digits).to_h

      # Check for leading zeros and skip if found
      next if leading_zeros?(puzzle, values)

      # Evaluate the puzzle and check if it is true
      left, right = puzzle.split("==")
      next unless evaluate_expression(left, values) == evaluate_expression(right, values)

      # Return the solution if found
      return values
    end

    # Return an empty hash if no solution found
    {}
  end

  def self.evaluate_expression(expression, values)
    # Substitute the values into the expression
    expression = expression.gsub(/[A-Z]/, values)
    # Evaluate the expression using the given values for each letter
    eval(expression)
  end

  def self.leading_zeros?(puzzle, values)
    puzzle.split(/[+\-\s]/).any? { |word| values[word[0]] == 0 }
  end
end

=begin
The Alphametics class is defined, which has three class methods: solve, evaluate_expression, and leading_zeros?.

The solve method takes a string puzzle as input and returns a hash of the values for each letter if a solution exists, or an empty hash if no solution is found.

First, the solve method extracts the unique letters from the puzzle and initializes their values to nil.

Next, the method generates all possible combinations of digits for the letters in the puzzle using the permutation method of the Array class.

For each permutation, the method assigns the digits to the letters in the puzzle by zipping the letters with the digits and creating a new hash.

The method then checks for leading zeros and skips the current permutation if any are found.

Next, the method evaluates the puzzle and checks if it is true. It splits the puzzle into the left and right sides of the equality sign, and checks if the expression on the left side equals the expression on the right side, using the evaluate_expression method.

If the puzzle is true, the method returns the solution, which is the hash of letter values.

If no solution is found, the method returns an empty hash.

The evaluate_expression method takes an expression and a hash of letter values as input, and returns the result of evaluating the expression using the given values for each letter. The method first splits the expression into its individual characters, and then iterates over each character, building up the result by multiplying the previous result by 10 and adding the value of the current character. If the current character is not a letter, the method simply returns the current result.

The leading_zeros? method takes a puzzle and a hash of letter values as input, and checks if any word in the puzzle has a leading zero, which is not allowed in a number. It does this by splitting the puzzle into individual words using
=end