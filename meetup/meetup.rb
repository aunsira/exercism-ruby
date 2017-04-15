class Meetup

  DAYS_WEEK = {
      :sunday => 0,
      :monday => 1,
      :tuesday => 2,
      :wednesday => 3,
      :thursday => 4,
      :friday => 5,
      :saturday => 6
  }

  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    if schedule == :teenth
      Date.new(year, month, 13) + (DAYS_WEEK[weekday] - Date.new(year, month, 13).wday) % 7
    elsif schedule == :first
      Date.new(year, month, 1) + (DAYS_WEEK[weekday] - Date.new(year, month, 1).wday) % 7
    elsif schedule == :second
      Date.new(year, month, 8) + (DAYS_WEEK[weekday] - Date.new(year, month, 8).wday) % 7
    elsif schedule == :third
      Date.new(year, month, 15) + (DAYS_WEEK[weekday] - Date.new(year, month, 15).wday) % 7
    elsif schedule == :fourth
      Date.new(year, month, 22) + (DAYS_WEEK[weekday] - Date.new(year, month, 22).wday) % 7
    elsif schedule == :last
      Date.new(year, month, -1) - (7 - (DAYS_WEEK[weekday] - Date.new(year, month, -1).wday)) % 7
    end
  end
end