class Sieve

  attr_reader :range

  def initialize(range)
    @range = range
  end

  def primes
    arr = 2.upto(range).to_a
    h = Hash[arr.map { |e| [e, true]}]
    h.each do |k,v|
      h[k] = false unless is_prime?(k)
    end
    h.map { |k,v| k if v}.compact
  end

  def is_prime?(n)
    (2..Math.sqrt(n)).each { |i| return false if n%i == 0 }
  end
end