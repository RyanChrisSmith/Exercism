=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
  def initialize(string)
    @string = string.downcase.scan(/\b[\w']+\b/)
    @counts = {}
    @counts.default = 0
  end

  def word_count
    @string.each { |word| @counts[word] += 1 }
    @counts
  end
end