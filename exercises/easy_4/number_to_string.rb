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
