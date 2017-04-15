class SumOfMultiples

  attr_reader :set_of_step

  def initialize(*n)
    @set_of_step = n.collect.to_a
  end

  def self.to(n)
    (0...n).select { |i| i if i%3 == 0 || i%5 == 0 }.inject(:+)
  end

  def to(n)
    (0...n).select do |i|
      set_of_step.any? do |s|
        i%s == 0
      end
    end.inject(:+)
  end
end