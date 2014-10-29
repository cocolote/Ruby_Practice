puts '*** Deaf Grandma ***'
puts ''
condition = ''
puts 'Hi sonny, How are you doing?'
puts ''
grandson = gets.chomp
i = 0
while true
  puts ''
  if grandson == 'BYE'
    i += 1
    if i == 3
      puts 'Ok, Ok Sunny, I hear you the first time, BYE!'
      break
    else
      puts 'HUH?! SPEAK UP, SUNNY!'
      puts 'WHAT DID YOU JUST SAY?'
      puts ''
    end
  elsif grandson == grandson.upcase
    year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + year.to_s
    puts ''
    i = 0
  else
    puts 'HUH?! SPEAK UP, SUNNY!'
    puts ''
    i = 0
  end
  puts ':)'
  puts ''
  grandson = gets.chomp
end
