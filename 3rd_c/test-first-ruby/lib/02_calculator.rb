def add(num1,num2)
  num1 + num2
end
def subtract(num1,num2)
  num1 - num2
end
def sum(numbers)
  numbers.inject(0){|result,item| result + item}
end
def multiply(numbers)
  numbers.inject(1){|result,item| result * item}
end
def power(num1,num2)
  num1**num2
end
def factorial(number)
  if number <= 1
    1
  else
    number * factorial(number - 1)
  end
end