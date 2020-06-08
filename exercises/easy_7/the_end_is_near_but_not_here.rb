def penultimate(str)
  word_array = str.split
  word_array[-2]

end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'