puts "Enter the length of the room:"
length = gets.chomp

puts "Enter the width of the room:"
width = gets.chomp

sq_meters = length.to_f * width.to_f

puts "The area of the room is #{sq_meters} (#{(sq_meters * 10.7639).round(2)} square feet)"