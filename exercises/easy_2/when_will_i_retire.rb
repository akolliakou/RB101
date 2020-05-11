puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

year_now = Time.now.year
retirement_year = year_now + (retirement_age - age)
years_to_go = retirement_age - age

puts "It's #{year_now}. You will retire in #{retirement_year}."
puts "You have only #{years_to_go} years to go!"