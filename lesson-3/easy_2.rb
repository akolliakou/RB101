=begin

Question 1:
-----------
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Spot")
ages.include?("Spot")
ages.member?("Spot")


Question 2:
-----------
munsters_description = "The Munsters are creepy in a good way."

a) munsters_description.swapcase!
b) munsters_description.capitalize!
c) munsters_description.downcase!
d) munsters_description.upcase!


Question 3:
-----------
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)


Question 4:
-----------
advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")


Question 5:
-----------
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


Question 6:
-----------
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino")


Question 7:
-----------
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino", "Hoppy")
fliintstones.concat(["Dino", "Hoppy"])


Question 8:
-----------
advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, advice.index('house'))

Question 9:
-----------
statement = "The Flintstones Rock!"

statement.count('t')


Question 10:
------------
title = "Flintstone Family Members"

title.center(40)

=end