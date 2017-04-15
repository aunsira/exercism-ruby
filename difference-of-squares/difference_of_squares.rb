class Squares

  VERSION = 2
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    1.upto(number).to_a.inject(0, :+) ** 2
  end

  def sum_of_squares
    1.upto(number).map { |i| i ** 2}.inject(0, :+)
  end

  def difference
    (square_of_sum - sum_of_squares).abs
  end
end