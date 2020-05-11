=begin

Question 1:
-----------
I expect it will print 
1
2
2
3

numbers.uniq returns a new array with unique elements only but is
not a destructive method and doesn't modify the original numbers array.
The puts method prints output as strings.


Question 2:
-----------
1. It is a comparison operator (not equal to) and is used in comparison statements
2. It will return the opposite of the boolean value of the operand (false if it were true and true if it were false)
3. It signifies a destructive/modifying action the method performs on the object it is being called.
4. Part of a ternary operation - before 'something' means that 'something' will be evaluated if what comes before ? is true
5. Usually signifies a method that returns a boolean value.
6. It double negates the boolean value of the operand (true-false-true or false-true-false) returning the original boolean value


Question 3:
-----------
advice = "Few things in life are as important as house training your pet dinosaur."

new_advice = advice.split

new_advice[6] = 'urgent'

new_advice = new_advice.join(' ')

puts new_advice


Question 4:
-----------
numbers.delete_at(1) removes the element at index position 1 (the second element in the array)
numbers.delete(1) removes the element(s) with value of 1


Question 5:
-----------
(10..100).include?(42)


Question 6:
-----------
famous_words = "seven years ago..."

a) famous_words.prepend("Four score and ")
b) famous_words.insert(0, "Four score and ")


Question 7:
-----------
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!


Question 8:
-----------
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.to_a.flatten[4..5]

=end