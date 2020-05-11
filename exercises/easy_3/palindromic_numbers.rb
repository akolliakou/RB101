def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

puts palindromic_number?(34543) 
puts palindromic_number?(123210)
puts palindromic_number?(22) 
puts palindromic_number?(5) 