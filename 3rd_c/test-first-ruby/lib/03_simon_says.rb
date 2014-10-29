def echo(word)
  word
end
def shout(phrase)
  phrase.upcase!
end
def repeat(word,t = 2)
  words = []
  t.times do
    words << word
  end
  words.join(' ')
end
def start_of_word(word,range)
  word[0...range]
end
def first_word(phrase)
  phrase[0...phrase.index(' ') || 0]
end
def titleize(phrase)
  words = phrase.capitalize.split(' ')
  banned_words = %w[a an and too to or over in out the of off for]
  words.each do |word|
    word.capitalize! unless banned_words.include?(word)
  end
  words.join(' ')
end
