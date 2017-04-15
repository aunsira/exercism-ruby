class Acronym
  VERSION = 1

  def self.abbreviate(phrase)
    set_of_cap = []
    phrase.split(/\W+/).each do |word|
      word[0] = word[0].upcase
      word.chars.each do |char|
        if char == char.upcase
          set_of_cap << char
        end
        break if word == word.upcase
      end
    end
    set_of_cap.join
  end
end