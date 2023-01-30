=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end
class Luhn
  def self.valid?(text)
    text = text.delete(' ')
    return false if text !~ /\A[0-9]{2,}\z/

    checksum = text.reverse.each_char.with_index.sum do |ch, i|
      digit = ch.to_i
      if i.odd?
        digit *= 2
        digit -= 9 if digit > 9
      end
      digit
    end
    (checksum % 10).zero?
  end
end