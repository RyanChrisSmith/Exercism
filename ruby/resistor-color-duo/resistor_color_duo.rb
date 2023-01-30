=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
class ResistorColorDuo
  @codes = {black: 0, brown: 1, red: 2, orange: 3, yellow: 4, green: 5, blue: 6, violet: 7, grey: 8, white: 9}

  def self.value(array)
    colors = %w[black brown red orange yellow green blue violet grey white]
    first = @codes.fetch(array[0].to_sym)
    second = @codes.fetch(array[1].to_sym)
    final = "#{first}#{second}"
    final.to_i
  end
end