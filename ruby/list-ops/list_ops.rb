class ListOps

  def self.arrays(array)
    count = 0
    array.each { count += 1 }
    count
  end

  def self.reverser(arg)
    reversed = []
    until arg.empty?
      reversed << arg.pop
    end
    reversed
  end

  def self.concatter(array1, array2)
    result = []
    array1.each do |elem|
      result << elem
    end
    array2.each do |elem|
      result << elem
    end
    result
  end

  def self.mapper(array, &block)
    result = []

    array.each do |element|
      result << block.call(element)
    end

    result
  end

  def self.filterer(array, &block)
    result = []

    array.each do |element|
      result << element if block.call(element)
    end

    result
  end

  def self.sum_reducer(array)
    result = 0

    array.each do |element|
      result += element
    end

    result
  end

  def self.factorial_reducer(array)
    result = 1

    array.each do |element|
      result *= element
    end

    result
  end
end