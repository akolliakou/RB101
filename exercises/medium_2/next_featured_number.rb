def featured(integer)
  current_integer = integer

  loop do
    current_integer += 1

    if current_integer.odd? && current_integer % 7 == 0 && current_integer.digits.uniq == current_integer.digits
      return current_integer
    end

    break if current_integer > 9_876_543_210
  end

  "There is no possible number that fulfills those requirements"
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) 