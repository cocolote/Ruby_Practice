def reverser
  yield.split.map {|word| word.reverse}.join(' ')
end

def adder(num = 1, &block)
  block.call + num
end

def repeater(t = 1,&block)
  t.times {block.call}
end

