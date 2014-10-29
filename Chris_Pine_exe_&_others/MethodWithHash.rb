# open the file "new-fd" and create a file descriptor:
puts '++++ Opening a file ++++'
puts
fd = IO.sysopen("new-fd", "w")

# create a new I/O stream using the file descriptor for "new-fd":
p IO.new(fd)

#Example of what it means Parse
puts '++++ Example of what Parse means ++++'
puts
module RubyMonk
  module Parser
    class TextParser
      def self.parse(str)
        str.upcase.split("")
      end
    end
  end
end

#Constan Lookup example
puts '++++ Example of scope of the Constant lookup (::) operator ++++'
puts
module Dojo
  A = 4
  module Kata
    B = 8
    module Roulette
      class ScopeIn
        def push
          15
        end
      end
    end
  end
end

A = 16
B = 23
C = 42

puts "A - #{A}"
puts "Dojo::A - #{Dojo::A}"

puts

puts "B - #{B}"
puts "Dojo::Kata::B - #{Dojo::Kata::B}"

puts

puts "C - #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"

#Example of a module with a method and how to pass the parameters from a class
puts '++++ Module included in 2 classes ++++'
puts
module Perimeter
  def perimeter
    #taking sides that are defined in the class
    sides.inject(0) { |sum, side| sum + side }
  end
end

class Rectangle
  # Your code here
  include Perimeter

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
  #the name of this group is what we use as parameter
  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  # Your code here
  include Perimeter

  def initialize(side)
    @side = side
  end
  #the name of this group is what we use as parameter
  def sides
    [@side, @side, @side, @side]
  end
end

#Example code with yield using a block inside a block
puts '++++ Summarize the values in the array ++++'
puts
def calculate(*numbers)
  yield(*numbers)
end

puts calculate(3,4,5,2){|*numbers| numbers.inject(0){|res, num| res + num}}

#Inject() array method to summarize items in it
#the method requires a block, the block needs to variables
#the container "result" and the element in the array "element"
#we can do what ever with the element and it would be stored in the result variable
puts '++++ Summarize the values in the array ++++'
puts
[1, 2, 3, 4].inject(0) { |result, element| result + element } # => 10
puts '++++ Creates a Hash with the items inside the array ++++'
puts
[1,"a",Object.new,:hi].inject({}) do |hash, item|
  hash[item.to_s] = item
  hash
end
puts '++++ Adds or Subtracts depending on the option in Calculate ++++'
puts
def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }
end

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end

puts calculate(4, 5, add: true)
puts calculate(-10, 2, 3, add: true)
puts calculate(4, 5, subtract: true)
puts calculate(-10, 2, 3, subtract: true)

#Methods can have variables parameters using the *(splat) operator
#I can use it only with the last parameter.
#This creates an array that can hold a lot of parameters at the same time

def introduction(age, gender, *names)
  "Meet #{names.join(' ')}, who's #{age} and #{gender}"
end
puts '++++ Introduction method ++++'
puts
puts introduction(29, 'Male', 'Ezequiel', 'Jose', 'Lopez')
puts introduction(30, 'Female', 'Jenifer', 'Elisa', 'Bamford')
puts introduction(7, 'Female', 'Luna')
puts introduction(7, 'Female', 'Lina')
puts
#I can use a hash as a parameter like in the example
#in this way I can create options parameters for the same routine
#to do different things depending on this last ones.

def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end
puts '++++ Adding with Hash ++++'
puts
puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)