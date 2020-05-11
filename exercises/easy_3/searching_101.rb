numbers = []

puts "Enter the first number:"
first_num = gets.chomp.to_i

puts "Enter the second number:"
second_num = gets.chomp.to_i

puts "Enter the third number:"
third_num = gets.chomp.to_i

puts "Enter the fourth number:"
fourth_num = gets.chomp.to_i

puts "Enter the fifth number:"
fifth_num = gets.chomp.to_i

puts "Enter the last number:"
last_num = gets.chomp.to_i

numbers << first_num << second_num << third_num << fourth_num << fifth_num

if numbers.include?(last_num)
  puts "The number #{last_num} appears in #{numbers}."
else
  puts "The number #{last_num} does not appear in #{numbers}." 
end
