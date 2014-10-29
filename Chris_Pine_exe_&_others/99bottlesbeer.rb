num_bottles = 99

while num_bottles > 0 do
  puts num_bottles.to_s + ' bottles of beer on the wall,'
  puts num_bottles.to_s + ' bottles of beer'
  num_bottles -= 1
  puts 'Take one down and pass it around'
  puts num_bottles.to_s + ' bottles of beer on the wall,'
  puts ''
end
