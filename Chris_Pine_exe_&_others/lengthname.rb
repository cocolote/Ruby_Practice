puts '*** Let\'s count the letters in your full name ***'
puts ''
print 'Enter your first name: '
first_name = gets.chomp
print 'Enter your middle name: '
middle_name = gets.chomp
print 'Finally, Enter your last name: '
last_name = gets.chomp
puts ''

letter_in_name = first_name.length + middle_name.length + last_name.length

puts 'There are [' + letter_in_name.to_s + '] letters in your name, useful eh! :)'