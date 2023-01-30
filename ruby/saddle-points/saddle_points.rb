class Matrix
  def initialize(string)
    @rows = string.lines.map { |line| line.split.map(&:to_i) }
    @columns = @rows.transpose
  end

  def rows
    @rows
  end

  def columns
    @columns
  end

  def saddle_points
    saddle_points = []
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |value, col_index|
        saddle_points << [col_index, row_index] if value == @rows[row_index].min && value == @columns[col_index].max
      end
    end
    saddle_points
  end
end
