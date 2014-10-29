matrix = [
          [0,1,2],
          [3,4,5],
          [6,7,8],
          [9,10,11]
          ]

def my_transpose(matrix)
  matrix_transpose = []

  new_y = matrix.length
  new_x = matrix[0].length

  new_x.times do |i|
    aux_transpose = []
    new_y.times do |j|
      aux_transpose << matrix[j][i]
    end
    matrix_transpose << aux_transpose
  end
  matrix_transpose

end

matrix.each do |value|
  puts "#{value}"
end
puts
matrix_transpose = my_transpose(matrix)

matrix_transpose.each do |value|
  puts "#{value}"
end
