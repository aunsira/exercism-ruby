class Raindrops

  VERSION = 1

  MAP = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

  def self.convert_first_try(number)
    result = []
    i = 2
    tmp = number
    if number == 1
      result << 1
    else
      while number != 1 && i <= number do
        if number%i == 0
          result << i
          number = number/i
        end
        i+=1
      end
    end
    result = result.each.map do |r|
      unless MAP[r].nil?
        MAP[r]
      end
    end.join
    if result.empty?
      result = tmp.to_s
    end
    return result
  end

  def self.convert_scomma(number)
    s = [
      ('Pling' if number%3 == 0),
      ('Plang' if number%5 == 0),
      ('Plong' if number%7 == 0)
    ].join
    s.empty? ? number.to_s : s
  end

  def self.convert(number)
    result = ""
    result += 'Pling' if number%3 == 0
    result += 'Plang' if number%5 == 0
    result += 'Plong' if number%7 == 0
    result = number.to_s if result.empty?
    return result
  end
end
