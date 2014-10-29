def is_prime?(num)
  i = 2
  while i < num
    if num % i == 0
      return false
    end
    i += 1
  end
  true
end

def primes(max)
  i = 1
  prime_arr = []
  while i < max
    prime_arr << i if is_prime?(i)
    i += 1
  end
  prime_arr.each {|prime| print "#{prime}, "}
end

print 'Enter a number:'
max = Integer(gets.chomp)

primes(max)
