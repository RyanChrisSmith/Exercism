class Proverb
  attr_reader :words, :qualifier

  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier
  end

  def to_s
    consequences = words.each_cons(2).map do |cause, effect|
      "For want of a #{cause} the #{effect} was lost."
    end

    consequences.join("\n") + "\nAnd all for the want of a #{qualifier ? "#{qualifier} " : ''}#{words.first}."
  end
end
