def rotate_array(array)
  array[1..-1] + [array.shift]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true


def rotate_string(string)
  string[1..-1] + string[0]
end

p rotate_string("abcd") == "bcda"

def rotate_integer(num)
  int_str = rotate_string(num.to_s)
  int_str.to_i
end

p rotate_integer(1234) == 2341