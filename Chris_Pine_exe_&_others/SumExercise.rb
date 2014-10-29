def sum(an)
  result = 0
  an.each do |num|
    result = result + num
  end
  puts "The result is #{result}"
end

nums = [2,4,6,8,2,8,125,-32,2,0,0]
sum(nums)
