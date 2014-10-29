puts '*** Crazy Sum ***'
puts ''
def crazy_sum (numbers)
  i = 0
  sum = 0
  numbers.each do |num|
    sum = num * i + sum
    i += 1
  end
  puts sum
end
array = [2,25,3,-4,5,0]
crazy_sum(array)

puts ''
puts '*** Crazy Nums ***'
puts ''
def crazy_nums (num)
  result = []
  i = 0
  while i < num
    if (i % 5 == 0 || i % 3 == 0)&& i % 15 != 0
      result << i
    end
    i += 1
  end
  puts result
end
crazy_nums(50)

puts ''
puts '*** Square Nums ***'
puts ''
def square_nums (num)
  i = 1
  while true
    res = i * i
    if res < num
      i += 1
    else
      break
    end
  end
  i -= 1
  puts i
end

square_nums(25)