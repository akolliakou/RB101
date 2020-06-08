def swapcase(str1)
  char_string = str1.chars

  char_string.map! do |char|
    char == char.downcase ? char.upcase : char.downcase
  end

  char_string.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'