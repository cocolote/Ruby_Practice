def translate_phrase(phrase)
  #Split the phrase in words
  words = phrase.split(' ')
  #What the function is going to return
  result = []
  words.each do |word|
    #Initialize vowel to use it in the condition
    vowel = ''
    #Downcase the words to avoid the problem with the upcase letters
    pig_latin_w = word.downcase
    #Creates an array with 3 items or 2 depending where is the 'qu'
    #This is an especial case for qu that needs to be treated differently
    qu = pig_latin_w.partition('qu') if pig_latin_w.match(/qu/)
    #If there is something in 'qu' search for a vowel in the items that are not 'qu'
    if qu != nil
      i = 0
      until vowel.match(/[aeiou]/)
        if qu[i] != 'qu'
          vowel = qu[i].match(/[aeiou]/).to_s
        end
        i += 1
      end
    else
      #Search in the entire word for the first vowel
      vowel = pig_latin_w.match(/[aeiou]/).to_s
    end
    #Identifies if the word has a non word char
    dot_comma = pig_latin_w.match(/[^-a-z0-9A-Z_]/).to_s
    #Deletes the non word char from the word
    pig_latin_w.delete!(dot_comma) if dot_comma != nil
    #This is for words doesn't have vowels
    if vowel.nil?
      pig_latin_w = pig_latin_w + 'ay'
    else
      pig_latin_w = pig_latin_w[pig_latin_w.index(vowel)...pig_latin_w.length] + pig_latin_w[0...pig_latin_w.index(vowel)] + 'ay'
    end
    #Verifies if the word was capitalized
    pig_latin_w.capitalize! if word[0].match(/[A-Z]/)
    #concatenate the non word char at the end of the word
    pig_latin_w = pig_latin_w + dot_comma if dot_comma != nil
    result << pig_latin_w
  end
  result.join(' ')
end