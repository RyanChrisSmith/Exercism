=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming
  def self.compute(string1, string2)
    raise ArgumentError if string1.length != string2.length

    differences = 0
    string1.chars.each_with_index do |letter, index|
      differences += 1 if letter != string2[index]
    end
    differences
  end
end