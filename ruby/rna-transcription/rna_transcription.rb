=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end
class Complement
  def self.of_dna(dna_sequence)
    rna_sequence = ""
    dna_sequence.each_char do |nucleotide|
      case nucleotide
      when "C"
        rna_sequence += "G"
      when "G"
        rna_sequence += "C"
      when "T"
        rna_sequence += "A"
      when "A"
        rna_sequence += "U"
      else
        raise ArgumentError, "Invalid nucleotide: #{nucleotide}"
      end
    end
    rna_sequence
  end
end