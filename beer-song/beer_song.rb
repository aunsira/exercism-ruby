class BeerSong

  VERSION = 2

  def verse(remain)
    first_phase = "#{bottles(remain).capitalize} of beer on the wall, #{bottles(remain)} of beer."
    second_phase = find_second_phase(remain)
    "#{first_phase}\n#{second_phase}\n"
  end

  def find_second_phase(remain)
    phase =
        if remain.zero?
          'Go to the store and buy some more'
        else
          "Take #{remain == 1 ? 'it' : 'one'} down and pass it around"
        end
    phase << ", #{bottles(remain - 1)} of beer on the wall."
  end

  def bottles(remain)
    case remain
      when -1
        '99 bottles'
      when 0
        'no more bottles'
      when 1
        '1 bottle'
      else
        "#{remain} bottles"
    end
  end


  def verses(verse1,verse2)
    verse1.downto(verse2).map do |v|
      verse(v) + "\n"
    end.join('').chop!
  end

  def lyrics
    verses(99, 0)
  end
end

