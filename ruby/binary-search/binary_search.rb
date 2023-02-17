class BinarySearch

  def initialize(numbers)
    @numbers = numbers
  end

  def search_for(num)
    left_index = 0
    right_index = @numbers.length - 1

    while left_index <= right_index
      mid_index = (left_index + right_index) / 2

      current_number =@numbers[mid_index]

      if current_number == num
        return mid_index
      elsif current_number < num
        left_index = mid_index + 1
      else
        right_index = mid_index - 1
      end
    end

    return nil
  end
end