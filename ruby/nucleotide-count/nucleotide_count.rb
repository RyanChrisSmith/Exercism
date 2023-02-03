class Nucleotide
  attr_reader :dna

  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError, 'Invalid DNA strand' unless dna.chars.all? { |nucleotide| %w[A T C G].include?(nucleotide) }

    new(dna)
  end

  def count(nucleotide)
    # Check if the given nucleotide is a valid one
    raise ArgumentError unless %w[A T C G].include?(nucleotide)

    # Count the occurrences of the nucleotide in the DNA strand
    dna.count(nucleotide)
  end

  def histogram
    # Create a hash to store the count of each nucleotide
    histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    # Iterate through each nucleotide in the DNA strand
    dna.each_char do |nucleotide|
      # Increment the count of the nucleotide in the histogram
      histogram[nucleotide] += 1
    end

    histogram
  end
end
