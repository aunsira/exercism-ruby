require 'humanize'

class Say

  attr_reader :number

  def initialize(number)
    raise ArgumentError if number < 0 || number >= 10**12
    @number = number
  end

  # def in_english
  #   result = number.humanize
  #   result.slice! ' and'
  #   result.slice! ','
  #   result.slice! ','
  #   result.slice! ' and'
  #   result.slice! ' and'
  #   result.slice! ' and'
  #   result.slice! ','
  #   result
  # end
  def in_english
    num = self.to_i
    o = ''
    if num < 0
      o += 'negative '
      num = num.abs
    end
    if num.zero?
      o += 'zero'
    else
      sets = []
      i = 0
      f = false
      while !num.zero?
        num, r = num.divmod(1000)
        sets << LOTS[i] + (!sets.empty? ? (f ? ' and' : ',') : '') if !(r.zero? || i.zero?)
        f = true if i.zero? && r < 100

        sets << SUB_ONE_THOUSAND[r] if !r.zero?
        i = i.succ

      end
      o += sets.reverse.join(' ')
    end

    o += ' point ' + self.to_s.split(/\./, 2).last.scan(/./).map { |n| SUB_ONE_THOUSAND[n.to_i] }.join(' ') if self.class == Float
    o
  end
end