puts "Let's see if the number is prime or not"
print 'Enter a number to analyze:'
n = Integer(gets.chomp)

def is_prime?(num)
  i = 2
  while i < num
    if num % i == 0
      return puts 'false'
    end
    i += 1
  end
  puts 'true'
end

is_prime?(n)