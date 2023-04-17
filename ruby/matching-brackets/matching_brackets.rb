class Brackets
  PAIRS = {
    '[' => ']',
    '{' => '}',
    '(' => ')'
  }

  def self.paired?(brackets)
    stack = []
    brackets.chars.each do |char|
      if PAIRS.key?(char)
        stack << PAIRS[char]
      elsif PAIRS.value?(char)
        return false if stack.pop != char
      end
    end
    stack.empty?
  end
end