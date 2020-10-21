# In this exercise, you are going to compute 
# a method that returns the last digit of the nth Fibonacci number.

def fibonacci_last(num)
  return 1 if num <= 2
  first, last = [1, 1]
  counter = 2

  until num == counter
    first, last = [last, first + last]
    counter += 1
  end

  last.digits.reverse.last
end

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)
p fibonacci_last(100_001)
p fibonacci_last(1_000_007)
p fibonacci_last(123456789)