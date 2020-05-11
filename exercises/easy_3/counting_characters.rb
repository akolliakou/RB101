puts "Enter your word or multiple words:"
string = gets.chomp

puts "There are #{string.delete(' ').length} characters in \"#{string}\"."