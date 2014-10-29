
def pow(num1, num2)
  result = 1
  num2.times{result = result * num1}
  result
end
puts '*** Pow ***'
puts "#{pow(3,2)}, #{pow(2,4)}, #{pow(2,8)}"
puts

def sum(numbers)
  numbers.inject(0){|result, item| result + item}
end

puts '*** Sum ***'
puts "#{sum([3,2,5])}, #{sum([2,4,5])}, #{sum([2,8,5])}"
puts

def is_prime?(num)
  i = 2
  (num - 2).times do
    if num % (i) == 0 && num != 2
      return false
    end
    i +=1
  end
  return true
end

puts '*** Is_Prime? ***'
puts "2 is prime?: #{is_prime?(2)}, 7 is prime: #{is_prime?(7)}, 4 is prime?: #{is_prime?(4)}, 47 is prime?: #{is_prime?(47)}"
puts

def primes(max)
  result = []
  (max - 1).times do |i|
    result << i if is_prime?(i)
  end
  result
end

puts '*** Primes ***'
puts "5: #{primes(5)}"
puts "7: #{primes(7)}"
puts "15: #{primes(15)}"
puts "50: #{primes(50)}"
