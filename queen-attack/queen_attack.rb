class Queens

  attr_reader :black, :white

  def initialize(board = {})
    @black = board.fetch(:black) { [7,3] }
    @white = board.fetch(:white) { [0,3] }
    raise ArgumentError if black == white
  end

  def to_s
    result = []
    (0..7).to_a.each do |i|
      each_field = []
      (0..7).to_a.each do |j|
        if i == black[0] && j == black[1]
          each_field << 'B'
        elsif i == white[0] && j == white[1]
          each_field << 'W'
        else
          each_field << '_'
        end
      end
      result[i] = each_field.join(' ')
    end
    result.join("\n")
  end

  def attack?
    black[0] == white[0] || black[1] == white[1] || ((black[1]-black[0]).abs == (white[1]-white[0]).abs)
  end

end