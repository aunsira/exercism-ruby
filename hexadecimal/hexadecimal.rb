class Hexadecimal

  HEX_DEC_TABLE = {
      '0' => 0,
      '1' => 1,
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9,
      'a' => 10,
      'b' => 11,
      'c' => 12,
      'd' => 13,
      'e' => 14,
      'f' => 15
  }
  attr_reader :hex

  def initialize(hex)
    @hex = hex
  end

  def to_decimal
    result = 0
    hex.chars.reverse.each_with_index do |c, i|
      return 0 if HEX_DEC_TABLE[c].nil?
      result += HEX_DEC_TABLE[c]*16**i
    end
    result
  end
end