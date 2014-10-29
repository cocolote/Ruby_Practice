puts '*** Leap Years ***'
puts ''
puts 'Enter a period of years to se the leap years in between'
print 'Enter the first year of the period: '
first_year = Integer(gets.chomp)
print 'Enter the last year of the period: '
last_year = Integer(gets.chomp)
year = first_year
list_years = ''
while year < last_year + 1 do
  if (year % 4 == 0 && year % 100 != 0) or year % 400 == 0
    list_years = list_years + year.to_s + ', '
  end
  year = year + 1
end
line_length = 50
puts ''
puts ' Leap Years List '.center(line_length,'-')
puts ''
puts list_years