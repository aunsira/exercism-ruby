class Gigasecond

  VERSION = 1

  def self.from(time)
    #(time + 10**9).to_time.utc
    time + 1_000_000_000
  end
end
