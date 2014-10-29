def no_repeat?(year)

  year.to_s.each_char do |num|
    i = year.to_s.index(num) + 1
    while year.to_s[i] != nil
      if num == year.to_s[i]
        return false
      end
      i += 1
    end
  end
  true

end

def no_repeats(year, ending_year)

  result = []
  while year <= ending_year
    if no_repeat?(year)
      result << year
    end
    year += 1
  end
  result

end
