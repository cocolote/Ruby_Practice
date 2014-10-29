class Dictionary

  attr_accessor :dictionary

  def initialize
    @dictionary = Hash.new
  end

  def entries
    @dictionary
  end

  def add(arg = {})
    arg.is_a?(Hash) ? @dictionary.merge!(arg) : @dictionary[arg] = nil
  end

  def keywords
    @dictionary.keys.sort
  end

  def include?(key)
    @dictionary.keys.include?(key)
  end

  def find(key)
    @dictionary.select{ |k,i| k.include? key}
  end

  def printable
    dictionary_sorted = []
    @dictionary.keys.sort.each do |k|
      dictionary_sorted << "[#{k}] \"#{@dictionary[k]}\""
    end
    dictionary_sorted.join("\n")
  end

end
