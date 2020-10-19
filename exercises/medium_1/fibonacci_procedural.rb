# Rewrite your recursive fibonacci method so that it 
# computes its results without recursion.

def fibonacci(num)
  return 1 if num <= 2
  first, last = [1, 1]
  counter = 2

  until num == counter
    first, last = [last, first + last]
    counter += 1
  end

  last
end

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501