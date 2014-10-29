def shuffle_list(list, j, k)
  i = rand(list.count+1)
  if k > list.count
    return list
  else
    k += 1
  end
  if i != j && list[i] != nil
    aux_list = list[i]
    list[i] = list[j]
    list[j] = aux_list
    shuffle_list(list,i,k)
  else
    shuffle_list(list,i,k)
  end
end
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

words = []
puts '*** Shuffle an Array ***'
puts
puts 'This program will repeat until you hit enter with out entering a word'
puts 'Enter a word'
word = gets.chomp
puts "#{fill_up_words(words, word)}"
puts '*** The list with the order given by the user ***'
puts
puts "#{shuffle_list(words,0,0)}"
puts '*** The list SHUFFLED ***'