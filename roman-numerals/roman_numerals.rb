class Fixnum

  VERSION = 1
  ROMAN = {1 => 'I',
           4 => 'IV',
           5 => 'V',
           9 =>  'IX',
           10 => 'X',
           40 => 'XL',
           50 => 'L',
           90 => 'XC',
           100 => 'C',
           400 => 'CD',
           500 => 'D',
           900 => 'CM',
           1_000 => 'M',
           5_000 => 'V'
  }

  def to_roman
    left = self
    result = []
    # while left > 0 do
      ROMAN.reverse_each do |k,v|
          a = left/k
          result << v*a
          left %= k
      end
    # end
    result.join
  end
end