def titleize(title)
  #This is one method to do it (my method)
  words = title.capitalize.split(' ')
  banned_words = %w[a an and too to or over in out the of off for]
  words.each do |word|
    word.capitalize! unless banned_words.include?(word)
  end
  words.join(' ')
end

def titleize(title)
  #this is another method to do the same! (from a professional)
  banned_words = %w(a an and too to or over in out the of off for)
  title.capitalize.split.map{|word| banned_words.include?(word) ? word : word.capitalize}.join(' ')
end