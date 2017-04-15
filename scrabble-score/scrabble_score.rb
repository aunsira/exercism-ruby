class Scrabble

  SCORE_TABLE = {
      1 => 'A E I O U L N R S T',
      2 => 'D G',
      3 => 'B C M P',
      4 => 'F H V W Y',
      5 => 'K',
      8 => 'J X',
      10 => 'Q Z'
  }

  attr_reader :word

  def initialize(word)
    @word = word.to_s.upcase!
  end

  def score
    result = 0
    return result if word.nil? || word.to_s.empty?
    SCORE_TABLE.each do |k, v|
      word.chars.each do |w|
        result += k unless v[w].nil?
      end
    end
    result
  end

  def self.score(word)
    new(word).score
  end

end