empty_arry = Array.new #creates a new empty array
another_empty_array = [] #this is the preferred way, and much easier

some_squares = [4, 9 , 16]
some_fruits = ['pear', 'apple', 'banana']

#To reverse an array and creating a new one
example [1,2,3,4,5]
  #*** Function to manually reverse an array ***
  #first creats an array with same amount of elements than example
  #example.pop return the last item and place it first to reverse the array
result = Array.new(example.count){example.pop}
  #this is the same but using a string of numbers
example = '1 2 3 4 5'
result = Array.new(example.split(' ').count){example.split(' ').pop}.join(' ')
