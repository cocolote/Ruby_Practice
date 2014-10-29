print 'Enter a number (base):'
n1 = Integer(gets.chop)

print 'Enter another number (exponent):'
n2 = Integer(gets.chomp)

def pow(base, expo)
  return puts 'it has to be positive numbers' if (base <= 0 || expo <= 0)
  result = 1
  expo.times do
    result = result*base
  end
  puts "The result is #{result}"
end

pow(n1, n2)