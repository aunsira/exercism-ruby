class Anagram

  def initialize(word)
    @word = downcase_word(word)
  end

  def match(words)
    words.select do |w|
      clean_up_word(w) == clean_up_word(@word) && downcase_word(w) != @word
    end
  end

  def downcase_word(word)
    word.downcase
  end

  def clean_up_word(word)
    downcase_word(word).chars.sort
  end

end