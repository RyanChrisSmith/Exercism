class Anagram
  def initialize(subject)
    @subject = subject
  end

  def match(words)
    words.select { |word| anagram?(word) }
  end

  private

  def anagram?(word)
    word.downcase.chars.sort == @subject.downcase.chars.sort && word.downcase != @subject.downcase
  end
end