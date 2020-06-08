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

def palindromes(str)
  palindromes_array = []
  substrings(str).each do |substr|
    next if substr.length == 1
    if substr == substr.reverse
      palindromes_array << substr
    end
  end
  
  palindromes_array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]