words = []
puts '*** Sorting an Array ***'
puts ''
puts 'This program will repeat until you hit enter with out entering a word'
print 'Enter a word: '
word = gets.chomp
puts ''

while word != ''
  word.capitalize!
  words << word
  print 'Enter a word: '
  word = gets.chomp
  puts ''
end

puts '**** Array ****'
puts ''
words.sort!
puts words.join(', ') + ' :)'