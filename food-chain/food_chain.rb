class FoodChain

  VERSION = 2

  $things = %w(fly spider bird cat dog goat cow horse)
  $thing_description = {
      'spider' => "It wriggled and jiggled and tickled inside her.\n",
      'bird' => "How absurd to swallow a bird!\n",
      'cat' => "Imagine that, to swallow a cat!\n",
      'dog' => "What a hog, to swallow a dog!\n",
      'goat' => "Just opened her throat and swallowed a goat!\n",
      'cow' => "I don't know how she swallowed a cow!\n"
  }

  def self.song
    lyrics = ''
    0.upto($things.size - 1) do |i|
      lyrics_each_thing = ''
      # intro
      lyrics_each_thing << "I know an old lady who swallowed a #{$things[i]}.\n"

      # chorus
      lyrics_each_thing << $thing_description[$things[i]] unless $thing_description[$things[i]].nil?

      # hook
      $things[0..i].reverse.each_cons(2) do |curr, prev|
        break if curr == 'horse'
        prev += ' that wriggled and jiggled and tickled inside her' if curr == 'bird'
        if curr != 'fly'
          lyrics_each_thing << "She swallowed the #{curr} to catch the #{prev}.\n"
        end
      end

      # outro
      if $things[i].equal? $things.last
        lyrics_each_thing << "She's dead, of course!\n"
      else
        lyrics_each_thing << "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
      end
      lyrics << lyrics_each_thing
    end
    lyrics
  end
end