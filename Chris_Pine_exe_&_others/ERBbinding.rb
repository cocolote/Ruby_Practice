require 'erb'
meaning_of_life = 42

question = "The answer to the ultimate question of life, the Universe and everything is: <%= meaning_of_life %>"
template = ERB.new question

results = template.result(binding)
puts results
