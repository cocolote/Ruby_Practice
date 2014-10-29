def letter_count(phrase)
  result = {}
  phrase.split.join.each_char do |letter|
    result[letter] = result[letter] + 1
  end
  result
end
