class Prime

  MAX = 300_000

  def nth(n)
    raise ArgumentError if n == 0
    return 2 if n == 1
    ans = []
    3.upto(MAX).each do |i|
      next if i%2 == 0
      is_prime = true
      (2..Math.sqrt(i)).each do |j|
        if i%j == 0
          is_prime = false
          break
        end
      end
      ans << i if is_prime
      return i if ans.length == n-1
    end
  end
end