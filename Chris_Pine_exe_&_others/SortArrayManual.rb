def fill_up_words(words, word)
  if word == ''
    return words
  end
  words << word
  puts
  puts 'Enter a word'
  word = gets.chomp
  fill_up_words(words, word)
end
def sort_words(words)
  words.count.times do
    i = 0
    j = i + 1
    while j < words.count
      if words[i] > words[j]
        aux_words = words[i]
        words[i] = words[j]
        words[j] = aux_words
      end
      i += 1
      j = i + 1
    end
  end
  words
end

words = []
puts '*** Sorting an Array ***'
puts
puts 'This program will repeat until you hit enter with out entering a word'
puts 'Enter a word'
word = gets.chomp

puts "#{sort_words(fill_up_words(words, word))}"
