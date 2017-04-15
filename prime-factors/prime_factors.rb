class PrimeFactors

  def self.for(n)
    result = []
    p = 2
    loop do
      if n%p == 0
        n /= p
        result << p
      else
        p += 1
      end
      break if n == 1
    end
    result
  end

end
