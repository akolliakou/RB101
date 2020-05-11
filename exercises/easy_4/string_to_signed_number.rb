def string_to_signed_integer(string)
  if string[0] == '-' || string[0] == '+'
    new_integer = string_to_integer(string[1..-1])
    string[0] == '+' ? new_integer : -new_integer
  else
    string_to_integer(string)
  end
end

DIGITS = { '1' => 1,
           '2' => 2,
           '3' => 3,
           '4' => 4,
           '5' => 5,
           '6' => 6,
           '7' => 7,
           '8' => 8,
           '9' => 9,
           '0' => 0
          }

def string_to_integer(string)
  digitised_array = string.chars.map { |e| DIGITS[e]}
  
  num = 0
  digitised_array.each { |e| num = 10 * num + e}
  num
end

