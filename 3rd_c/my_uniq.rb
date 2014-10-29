class Array

  def my_uniq
    result = []
    self.each {|item| result << item if !result.include?(item)}
    result
  end

  def sum
    result = []
    self.each do |item_1|
      self.each do |item_2|
        if item_1 + item_2 == 0
          result << item_1 << item_2
        end
      end
    end
    result.my_uniq
  end

end

puts "#{example = [1,2,2,1,3,4,5,4]}"
puts "#{example.my_uniq}"
puts "#{example = [1,2,-2,-1,3,-4,5,4]}"
puts "#{example.sum}"
