def uppercase?(str)
  chars_array = str.delete("^a-zA-Z").chars

  chars_array.all? { |char| char == char.upcase }
  
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true