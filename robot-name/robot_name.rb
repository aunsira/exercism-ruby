class Robot

  attr_accessor :name

  def initialize
    reset
  end

  def reset
    @name = gen_name
  end

  def gen_name
    (0...2).map { ('A'..'Z').to_a[rand(26)] }.join + (0...3).map { rand(10) }.join
  end
end