def max_rotation(number)
  result = number.to_s.chars
  length = result.size

  length.downto(2) do |idx|
    p result
    p -idx
    p removed_digit = result.delete_at(-idx)
    p result << removed_digit
  end

  p result.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 015 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845