def ask question
  while true
    puts question
    answer = gets.chomp
    answer.downcase!

    if answer == 'yes' || answer == 'no'
      if answer == 'yes'
        return true
      else
        return false
      end
    else
      puts 'Please, answer yer or no..'
    end
  end
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
ask 'Do you like eating chimichangas?'
wet_bed = ask 'Do you wet your bed?'
puts
puts 'Thank you for...'
puts
puts wet_bed