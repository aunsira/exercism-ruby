class Palindromes
  attr_reader :max_factor, :min_factor
  def initialize(factor)
    @max_factor = factor.fetch(:max_factor)
    @min_factor = factor.fetch(:min_factor) {1}
  end

  def generate
    @palindromes_hash = Hash.new
    range = (@min_factor..@max_factor)
    range.each do |i|
      range.each do |j|
        product = i * j
        if product.to_s == product.to_s.reverse
          if @palindromes_hash[product]
            palindrome = @palindromes_hash[product]
          else
            palindrome = Palindrome.new(product, [])
          end
          palindrome.factors << [i, j].sort
          palindrome.factors.uniq!
          @palindromes_hash[product] = palindrome
        end
      end
    end
  end

  def sort
    @palindromes_hash.sort
  end

  def largest
    sort.last[1]
  end

  def smallest
    sort.first[1]
  end
end

Palindrome = Struct.new(:value, :factors)

