puts "What is the cost of the bill?"
bill = gets.chomp.to_f

puts "How much to do you want to tip? Give %"
tip_percentage = gets.chomp.to_f

tip = ((tip_percentage / 100) * bill).round(2)
total = (bill + tip).round(2)

puts "The tip is £#{tip}"
puts "The total is £#{total}"