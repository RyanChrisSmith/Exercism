class PhoneNumber
  def self.clean(number)
    # remove all non-digit characters from the input number
    number = number.gsub(/[^0-9]/, '')

    # check the length of the number, return nil if it's less than 10 or more than 11 digits.
    return nil if number.length < 10 || number.length > 11

    # check if the number has 11 digits and starting with '1',
    # if yes remove the first digit making it 10 digit number, otherwise returns nil.
    if number.length == 11
      return nil if number[0] != '1'

      number = number[1..]
    end
    # check for the first digit of area code and exchange code.
    # if the first digit is '0' or '1' it will return nil.
    return nil if number[0] == '0' || number[0] == '1' || number[3] == '0' || number[3] == '1'

    number
  end
end

