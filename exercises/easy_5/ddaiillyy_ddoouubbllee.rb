def crunch(string)
  string_chars = string.chars
  new_string = ''
  
  string_chars.each_with_index do |char, idx|
    if char == string_chars[idx + 1]
      next
    else
      new_string << char
    end
  end

  new_string
end




p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''