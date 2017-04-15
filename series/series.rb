class Series

  attr_reader :digits

  def initialize(digits)
    # From string to array of characters
    @digits = digits.chars.map(&:to_i)
  end

  def slices(sn)
    raise ArgumentError if sn > digits.length
    0.upto(digits.size-sn).each.map { |i| digits[i, sn] }
  end
end