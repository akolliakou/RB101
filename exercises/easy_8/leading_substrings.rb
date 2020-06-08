def substrings_at_start(str)
  substrings = []
  counter = 1

  until counter > str.length
    substrings << str.slice(0, counter)
    counter += 1
  end

  substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']