class Crypto
  attr_reader :message

  def initialize(message)
    @message = message
  end

  # Returns the ciphertext for the given message
  def ciphertext
    # Normalize the message by removing non-alphanumeric characters and converting to lowercase
    normalized = normalize_message(message)

    # If the normalized message is empty, there is no ciphertext to return, so we return an empty string
    return '' if normalized.empty?

    # Split the normalized message into rows of characters, where each row has the same length
    rows = split_into_rows(normalized)

    # Add padding to the last row of the rows array so that all rows have the same length
    add_padding(rows)

    # Transpose the rows array (so that the columns become rows) and join the characters in each row into a string,
    # Then join the resulting strings into a single string separated by spaces. This is our ciphertext.
    transpose_and_join(rows)
  end

  private

  # Normalizes the given message by removing non-alphanumeric characters and converting to lowercase
  def normalize_message(message)
    message.downcase.gsub(/[^[:alnum:]]/, '')
  end

  # Splits the given message into rows of characters, where each row has the same length
  def split_into_rows(message)
    size = Math.sqrt(message.length).ceil
    message.chars.each_slice(size).to_a
  end

  # Adds padding to the last row of the given rows array so that all rows have the same length
  def add_padding(rows)
    last_row_size = rows.last.size
    rows.last.concat(Array.new(rows.first.size - last_row_size, ' ')) if last_row_size < rows.first.size
    rows << Array.new(rows.first.size, ' ') while rows.last.size < rows.first.size
  end

  # Transposes the given rows array (so that the columns become rows) and joins the characters in each row
  # Then joins the resulting strings into a single string separated by spaces.
  def transpose_and_join(rows)
    rows.transpose.map(&:join).join(' ')
  end
end
