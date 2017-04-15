class Clock

  attr_reader :hour, :minute

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
    get_time
  end

  def self.at(hour, minute = 0)
    new(hour, minute)
  end

  def +(minute)
    self.class.new(@hour, @minute + minute)
  end

  def -(minute)
    self.class.new(@hour, @minute - minute)
  end

  def ==(compare)
    self.to_s == compare.to_s
  end

  private def get_time
    @hour += @minute/60
    @minute %= 60
    @hour %= 24
  end

  def to_s
    format('%02d:%02d', @hour, @minute)
  end

end

