class Hamming
  VERSION = 1
  def Hamming.compute(a,b)
    raise ArgumentError unless a.length == b.length
    a.size.times.count { |i| a[i] != b[i] }
  end
end
