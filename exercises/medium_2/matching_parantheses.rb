# Write a method that takes a string as argument, and returns true if all 
# parentheses in the string are properly balanced, false otherwise. To be 
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(string)
  brackets = 0

  string.each_char do |char|
    brackets += 1 if char == '('
    brackets -= 1 if char == ')'
    return false if brackets < 0
  end

  if brackets != 0
    return false
  end

  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false