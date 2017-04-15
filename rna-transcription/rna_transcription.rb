class Complement

  VERSION = 3

  def self.of_dna(strand)
    strand.each_char.map do |str|
      if str == 'C'
        'G'
      elsif str == 'G'
        'C'
      elsif str == 'T'
        'A'
      elsif str == 'A'
        'U'
      else
        raise ArgumentError
      end
    end.join
  end
end
