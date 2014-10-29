puts '*** Greeting example ***'
puts ''
print 'Hello there, What\'s your name?: '
name = gets.chomp
puts 'Your name is '+ name + '? what a lovely name.'
puts 'pleased to meet you '+ name +' :)'
puts ''
puts '*** Full name greeting ***'
puts ''
print 'Hello there, What\'s your first name?: '
first_name = gets.chomp
print first_name + ' That\'s a lovely name, do you have a middle name?: '
middle_name = gets.chomp
puts 'Not many people have a middle name nowadays'
print 'Finally, what\'s your last name?: '
last_name = gets.chomp
puts ''
puts 'Pleased to meet you ' + first_name + ' ' + middle_name + ' ' + last_name + ' :)'