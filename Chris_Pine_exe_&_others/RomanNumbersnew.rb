def roman_numerals(arabic_number)
  roman_number = []
  roman_aux = []
  roman_numbers = [['I','V'],['X','L'],['C','D'],'M']
  arabic_number.to_s.each_char do |number|
    roman_aux << number
  end
  roman_aux.reverse!
  roman_aux.count.times do |i|
    if roman_aux[i].to_i != 0
      if roman_aux[i].to_i >= 5
        roman_number[i] = (roman_numbers[i][0]*(roman_aux[i].to_i - 5)) + roman_numbers[i][1]
      elsif roman_aux[i].to_i == 4
        roman_number[i] = roman_numbers[i][1] + roman_numbers[i][0]
      else
        roman_number[i] = roman_numbers[i][0] * roman_aux[i].to_i
      end
    end
  end
  roman_number.join.reverse!
end

print 'Enter a number between 1 and 3999: '
number = gets.chomp
puts "#{roman_numerals number}"