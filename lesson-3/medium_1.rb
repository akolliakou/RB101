=begin

Question 1:
-----------
For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

10.times { |n| puts (" " * n) + "The Flintstones Rock!"}


Question 2:
-----------
The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)
Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"


Question 3:
-----------
def factors(number)
  divisor = number
  factors = []
    while divisor > 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end
  factors
end

factors(20)


Question 4:
-----------

In the first one, the value of the local  variable buffer is passed in as an argument.
Then << modifies buffer and returns the modified value to the caller. If we outputed buffer,
it would now print the modified value. 
In the second one, the value of input_array is passed in as an argument and a new variable
buffer is initialised and assigned the value of input_array + [new_element]. Although the
return value of the methods is the same, in the second one input_array is not modified when passed 
back to the caller. If we outputed input_array, it would print the original value.


Question 5:
-----------
The limit variable is initiated outside of the method definition and is 
therefore not accessible within the method. We need to pass it in as an argument to be accessed
within the method.


def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

Question 6:
-----------
34
#increment is not a mutating method. The value of the initial answer variable is not modified.


Question 7:
-----------
Yes, the munsters hash has been modified. demo_hash points to the same object as the munsters variable.
When demo_hash gets modified, munsters get modified too.

Question 8:
-----------
"paper"

rps("rock", "scissors") evaluates to "rock"
rps("rock", "paper") evaluates to "paper"
so
rps(rps("rock. "paper), "rock") becomes rps("paper", "rock") which evaluates to "paper"


Question 9:
-----------
"no"
The returned value from the foo method is "yes" and this is what gets passed into the bar method
as an argument hence param == 'yes'

=end