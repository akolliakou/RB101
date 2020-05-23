def print_in_box(string)
  plus = '+'
  minus = '-'
  line = '|'
  white = ' '

  first = "#{plus}#{minus * (string.length + 2)}#{plus}"
  second = "#{line}#{white * (string.length + 2)}#{line}"
  third = "#{line}#{white}#{string}#{white}#{line}"

  puts first
  puts second
  puts third
  puts second
  puts first

end

print_in_box('To boldly go where no one has gone before.')