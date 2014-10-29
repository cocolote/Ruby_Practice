def vowels_arrenged?(word)
  vowels = []
  word.each_char do |letter|
    if /[aeiou]/.match(letter)
      vowels << letter
    end
  end
  vowels == vowels.sort ? true : false
end

def ordered_vowel_words(phrase)
  result = phrase.split.map{|word| word if vowels_arrenged?(word)}.compact.join(' ')
end
