class Binary

  VERSION = 1
  attr_reader :binary

  def initialize(binary)
    raise ArgumentError if binary.match(/[2-9a-z]/)
    @binary = binary
  end

  def to_decimal
    binary.split('').reverse.each_with_index.map do |c, i|
      c.to_i * 2 ** i
    end.reduce(:+)
  end
end