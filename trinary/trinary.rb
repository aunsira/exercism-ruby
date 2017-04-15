class Trinary

  attr_reader :n

  def initialize(n)
    @n = n
  end

  def to_decimal
    return 0 unless (n =~ /[a-z]/).nil?
    n.chars.map(&:to_i).reverse.each_with_index.map do |e, i|
      e*3 ** i
    end.reduce(:+)
  end
end