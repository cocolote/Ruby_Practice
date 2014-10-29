def word_unscrambler(word, dictionary)
  result = []
  result = dictionary.map {|d_word| d_word if word.each_char.to_a.sort == d_word.each_char.to_a.sort}.compact
end
