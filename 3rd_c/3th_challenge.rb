def corgi_golden_age(population_change)
  result = []

  population_change.each_with_index do |item, i|
    j = i + 1
    if population_change[j] != nil
      if item + population_change[j] > 0
        if item > 0
          result << population_change.index(item) unless result.include?(population_change.index(item))
        else
          result << population_change.index(population_change[j]) unless result.include?(population_change.index(population_change[j]))
        end
      end
    end
    j += 1
  end
  result
end

puts "#{corgi_golden_age([100, -101, 200, -3, 1000])}"

def combine_arrays(array_1, array_2)

  combined = array_1 + array_2

  combined.count.times do
    i = 0
    j = i + 1
    while j < combined.count
      if combined[i] > combined[j]
        aux_combined = combined[i]
        combined[i] = combined[j]
        combined[j] = aux_combined
      end
      i += 1
      j = i + 1
    end
  end
  combined

end

puts "#{combine_arrays([1,5,6],[2,3,4,8])}"

def create_array(array)

  result = []
  aux = []
  i = 0

  while i < array.count
    aux = aux + [array[i]]
    result << aux
    i += 1
  end

  if array.count > 2
    result << [array.first, array.last]
  end

  result

end

def subsegs(array)

  result = []
  t = array.length

  result << []

  t.times do
    result = result + create_array(array)
    array.shift
  end

  result

end

puts "#{subsegs(['a','b','c','d'])}"
