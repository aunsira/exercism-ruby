class Nucleotide

  attr_reader :dna

  def initialize(dna)
    validate_dna(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    dna = dna.chars
    new(dna)
  end

  def validate_dna(dna)
    dna.each do |e|
      if e =~ /[^ATGC]/
        raise ArgumentError
      end
    end
  end

  def histogram
    count_table = {
        'A' => 0,
        'T' => 0,
        'C' => 0,
        'G' => 0
    }
    dna.each { |e| count_table[e] += 1 }
    count_table
  end

  def count(char)
    dna.count(char)
  end

end
