def signed_integer_to_string(num)
  if num < 0
    integer_to_string(-num).prepend('-')
  elsif num > 0
    integer_to_string(num).prepend('+')
  else
    integer_to_string(num)
  end
end

DIGITS = {
           0 => '0',
           1 => '1',
           2 => '2',
           3 => '3',
           4 => '4',
           5 => '5',
           6 => '6',
           7 => '7',
           8 => '8',
           9 => '9'
         }

def integer_to_string(num)
  num.digits.reverse.map { |n| DIGITS[n] }.join
end

p signed_integer_to_string(4321) 
p signed_integer_to_string(-123)
p signed_integer_to_string(0)