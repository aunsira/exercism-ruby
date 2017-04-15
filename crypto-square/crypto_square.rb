class Crypto

  attr_reader :message

  def initialize(message)
    @message = message.gsub(/[^0-9A-Za-z]/, '').downcase
  end

  def normalize_plaintext
    message
  end

  def size
    Math.sqrt(message.length).ceil
  end

  def plaintext_segments()
    normalize_plaintext.chars.each_slice(size).map { |c| c.join }
  end

  def ciphertext
    (0...size).map { |i| plaintext_segments.map { |word| word[i] }}.join
  end

  def normalize_ciphertext
    result = []
    (0...size).each do |i|
      plaintext_segments.each do |word|
        result << word[i]
      end
      result << ' '
    end
    result.join.chomp(' ')
  end
end