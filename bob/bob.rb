class Bob

  def hey(thing)
    thing.strip!
    return 'Fine. Be that way!' if thing.empty?
    if thing.upcase == thing && !thing.split(', ').to_s.scan(/[A-Za-z]/).empty?
      'Whoa, chill out!'
    elsif thing.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end

end
