class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def initialize(array)
    array.each do |color|
      raise ArgumentError unless COLORS.include?(color)
    end

    @first = COLORS.index(array[0])
    @second = COLORS.index(array[1])
    @zero_count = COLORS.index(array[2])
  end

  def label
    resistance = "#{@first}#{@second}#".to_i * 10**@zero_count
    resistance_string = resistance.to_s

    if resistance >= 1_000_000
      resistance_string = "#{resistance/1_000_000} megaohms"
    elsif resistance >= 1_000
      resistance_string = "#{resistance/1_000} kiloohms"
    elsif resistance >= 1
      resistance_string = "#{resistance} ohms"
    end

    "Resistor value: #{resistance_string}"
  end
end
