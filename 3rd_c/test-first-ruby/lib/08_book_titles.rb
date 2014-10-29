class Book
  #This allow me to use the stat title everywhere in the class
  attr_accessor :title

  def title
    @title = titleize(@title)
  end

  def titleize(title)
    words = title.capitalize.split(' ')
    banned_words = %w[a an and too to or over in out the of off for]
    words.each do |word|
      word.capitalize! unless banned_words.include?(word)
    end
    words.join(' ')
  end

end
