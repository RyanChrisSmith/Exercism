=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
class Series
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def slices(number)
    raise ArgumentError if number > @input.length

    @input.chars.each_cons(number).map(&:join)
  end
end
