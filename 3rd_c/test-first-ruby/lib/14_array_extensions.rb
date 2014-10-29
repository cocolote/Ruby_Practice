class Array

  def sum
    self.inject(0){|result, item| result  + item}
  end

  def square
    self.map{|item| item**2}
  end

  def square!
    self.map!{|item| item**2}
  end

end
