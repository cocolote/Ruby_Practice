def nearest_larger(arr, i)

  arr.count.times do |j|

    if arr[i - j] != nil && i - j >= 0
      if arr[i] < arr[i - j]
        return i - j
      end
    end

    if arr[i + j] !=nil
      if arr[i] < arr[i + j]
        return i + j
      end
    end

  end
  return nil

end
