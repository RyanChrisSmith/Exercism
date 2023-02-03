class Matrix
  # define accessors for `rows` and `columns` instance variables
  attr_reader :rows, :columns

  def initialize(matrix_str)
    # split the matrix string by newlines and map each row to an array of integers
    @rows = matrix_str.split("\n").map { |row| row.split.map(&:to_i) }
    # transpose the matrix to get the columns
    @columns = @rows.transpose
  end

  def saddle_points
    # iterate over each row with its index
    rows.each_with_index.flat_map do |row, row_index|
      # iterate over each element in the row with its index
      row.each_with_index.select do |elem, col_index|
        # check if the element is both the maximum in its row and the minimum in its column
        elem == row.max && elem == columns[col_index].min
      end.map { |_, col_index| [row_index, col_index] }
    end
  end
end

