def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
# No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one','two','three','four','five','six','seven','eight','nine']
  tens_place = ['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  teenagers = ['ten','eleven', 'twelve', 'thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
# "left" is how much of the number
# we still have left to write out.
# "write" is the part we are
# writing out right now.
# write and left...get it? :)
# --------- Millions ------------
  left = number
  write = left/1000000 # How many hundreds left?
  left = left - write*1000000 # Subtract off those millions.
  if write > 0
    # Now here's the recursion:
    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
      # So we don't write 'two millionfifty-one'...
      num_string = num_string + ' '
    end
  end
# --------- Thousands ------------
  write = left/1000 # How many hundreds left?
  left = left - write*1000 # Subtract off those thousands.
  if write > 0
    # Now here's the recursion:
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      # So we don't write 'two thousandfifty-one'...
      num_string = num_string + ' '
    end
  end
# --------- Hundreds ------------
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.
  if write > 0
    # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end
#-------- Tens -----------------
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if write == 1
    # Since we can't write "tenty-two" instead of
    # "twelve", we have to make a special exception
    # for these.
      num_string = num_string + teenagers[left]
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    end
    if left >= 0
      num_string = num_string + tens_place[write - 2]
      num_string = num_string + '-' if left != 0
    end
  end
# ------------- Ones --------------------
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  # Now we just return "num_string"...
  num_string
end

num_bottles = 99
i = 0
while num_bottles > 0 do
  puts "#{english_number num_bottles} bottles of beer on the wall,"
  puts "#{english_number num_bottles} bottles of beer"
  num_bottles -= 1
  i += 1
  puts 'Take one down and pass it around'
  puts "#{english_number num_bottles} bottles of beer on the wall,"
  puts
  if i == 5
    i = Integer(gets.chomp)
  end
end