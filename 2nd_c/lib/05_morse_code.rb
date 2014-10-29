def morse_encode(phrase)

  morse_phrase = []

  morse_letters = {'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..',
                   'e' => '.', 'f' => '..-.', 'g' => '--.', 'h' => '....',
                   'i' => '..', 'j' => '.---', 'k' => '-.-', 'l' => '.-..',
                   'm' => '--', 'n' => '-.', 'o' => '---', 'p' => '.--.',
                   'q' => '--.-', 'r' => '.-.', 's' => '...', 't' => '-',
                   'u' => '..-', 'v' => '...-', 'w' => '.--', 'x' => '-..-',
                   'y' => '-.--', 'z' => '--..'}

  phrase.split.each do |word|
    morse_word =[]
    word.each_char do |letter|
      morse_word << morse_letters[letter]
    end
    morse_phrase << morse_word.join(' ')
  end
  morse_phrase.join('  ')

end
