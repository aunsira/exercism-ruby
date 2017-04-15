class Grains

  def self.square(n)
    2**(n-1)
  end

  def self.total
    1.upto(64).map { |i| square(i) }.inject(:+)
  end
end