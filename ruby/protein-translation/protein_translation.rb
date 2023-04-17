class InvalidCodonError < StandardError; end
Codons = {
  'AUG' => 'Methionine',
  'UUU' => 'Phenylalanine',
  'UUC' => 'Phenylalanine',
  'UUA' => 'Leucine',
  'UUG' => 'Leucine',
  'UCU' => 'Serine',
  'UCC' => 'Serine',
  'UCA' => 'Serine',
  'UCG' => 'Serine',
  'UAU' => 'Tyrosine',
  'UAC' => 'Tyrosine',
  'UGU' => 'Cysteine',
  'UGC' => 'Cysteine',
  'UGG' => 'Tryptophan',
  'UAA' => 'STOP',
  'UAG' => 'STOP',
  'UGA' => 'STOP'
}.freeze

module Translation
  def self.of_codon(rna)
    Codons[rna]
  end

  def self.of_rna(codons)
    codons.chars.each_slice(3).each_with_object([]) do |slice, array|
      codon = of_codon(slice.join)
      raise InvalidCodonError if codon.nil?
      return array if codon == 'STOP'

      array << codon
    end
  end
end