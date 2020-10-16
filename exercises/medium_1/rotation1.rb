# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Do the same for arrays and integers

def rotate_array(array)
  array[1..-1] + [array.shift]
end

def rotate_string(string)
  string[1..-1] + string[0]
end

p rotate_string("abcd") == "bcda"

def rotate_integer(num)
  int_str = rotate_string(num.to_s)
  int_str.to_i
end

