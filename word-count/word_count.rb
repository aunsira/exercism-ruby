class Phrase

  VERSION = 1

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    hash_result = Hash.new
    @phrase.gsub!(/[^0-9A-Za-z\s,|']/, '') # remove special characters
    @phrase.to_s.split(/[\s,]+/).each do |word| # split word with space and comma
      word = cut_quotations_off(word)
      word.downcase!
      hash_result[word].nil? ? hash_result[word] = 1 : hash_result[word] += 1
    end
    hash_result
  end

  def cut_quotations_off(word)
    if word.start_with?("'")
      word = word.slice(1..-1)
    end
    if word.end_with?("'")
      word = word.slice(0..-2)
    end
    word
  end
end
