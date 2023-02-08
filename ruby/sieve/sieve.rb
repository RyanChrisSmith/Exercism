class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    # return an empty array if limit is less than 2
    return [] if @limit < 2

    # create an array of all integers from 2 to `limit`
    integers = (2..@limit).to_a

    # remove all multiples of each integer number / must be greater than integer and divisible by integer
    integers.each do |integer|
      integers.reject! { |i| i > integer && (i % integer).zero? }
    end

    integers
  end
end
