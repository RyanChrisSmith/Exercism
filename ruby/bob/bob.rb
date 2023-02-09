class Bob

  def self.hey(remark)
    # remove whitespaces from the remark
    remark = remark.strip
    # check if the remark is a forceful question (ends with ? and is all uppercase)
    if remark[remark.length - 1] == '?' && remark == remark.upcase && remark =~ /[A-Za-z]/
      "Calm down, I know what I'm doing!"
      # check if the remark is shouting (all uppercase)
    elsif remark == remark.upcase && remark =~ /[A-Za-z]/
      'Whoa, chill out!'
      # check if the remark is a question (ends with ?)
    elsif remark[remark.length - 1] == '?'
      'Sure.'
      # check if the remark is forceful (ends with !)
    elsif remark[remark.length - 1] == '!'
      'Whatever.'
      # check if the remark is empty or only contains whitespaces
    elsif remark.empty?
      'Fine. Be that way!'
      # all other cases
    else
      'Whatever.'
    end
  end

end