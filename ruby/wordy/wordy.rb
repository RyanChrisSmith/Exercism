class WordProblem
  OPERATIONS = {
    "plus" => :+,
    "minus" => :-,
    "multiplied" => :*,
    "divided" => :/
  }

  def initialize(problem)
    @tokens = problem.scan(/-?\d+|[[:alpha:]]+/)
    @numbers = @tokens.select { |t| t.to_i.to_s == t }.map(&:to_i)
    @operations = @tokens.select { |t| OPERATIONS.key?(t) }.map { |t| OPERATIONS[t] }
  end

  def answer
    raise ArgumentError, "Invalid input" if @numbers.empty? || @operations.empty?

    these_numbers = @numbers.dup

    result = these_numbers.shift
    these_numbers.each_with_index do |num, i|
      operation = @operations[i]
      result = result.send(operation, num)
    end

    result
  end
end
