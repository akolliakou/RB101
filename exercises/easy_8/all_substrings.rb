def substrings_at_start(str)
  substrings = []
  counter = 1

  until counter > str.length
    substrings << str.slice(0, counter)
    counter += 1
  end

  substrings
end

def substrings(str)
  final_substrings = []
  counter = 0
  
  until counter == str.length
    final_substrings << substrings_at_start(str[counter..-1])
    counter += 1
  end
  
  final_substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]