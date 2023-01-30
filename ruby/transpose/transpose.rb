class Transpose
  def self.transpose(input)
    # Replace all spaces in the input with underscores
    strings = input.gsub(' ', '_').split("\n").map(&:chars)

    # Find the maximum length of the rows in the input
    max_length = strings.map(&:length).max

    # Pad the rows with spaces to the right so that they all have the same length
    strings = strings.map { |line| line + ([' '] * (max_length - line.length)) }

    # Transpose the rows
    transposed = strings.transpose

    # Replace the underscores with spaces and remove any trailing spaces
    result = transposed.map { |line| line.join.rstrip.gsub('_', ' ') }

    # Join the rows with newlines to get the final result
    result.join("\n")
  end
end
