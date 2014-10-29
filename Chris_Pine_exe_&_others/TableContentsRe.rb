def print_lines (lines, number_of_lines, line_length)
  number_of_lines.times do |i|
    puts lines[1][i].to_s.ljust(line_length/2,'_') + lines[2][i].to_s.rjust(line_length/2,'_')
  end
end

line_length = 52
table_contents = [' Table of Contents ',
                  ['Chapter 1: Getting Started','Chapter 2: Numbers','Chapter 3: Letters','Chapter 4: Ruby & me'],
                  [' page  1',' page  9',' page 13', ' page 15']]

number_of_lines = table_contents[1].length

puts ''
puts table_contents[0].center(line_length,'-')
puts ''
print_lines(table_contents, number_of_lines, line_length)