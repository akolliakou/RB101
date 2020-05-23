def find_fibonacci_index_by_length(n)
  first_num, second_num = 1, 1
  counter = 3

  loop do
    first_num, second_num = second_num, second_num + first_num
    break if second_num.to_s.length == n

    counter += 1
  end

  counter
end 


p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3) 
p find_fibonacci_index_by_length(10) 
p find_fibonacci_index_by_length(100) 
p find_fibonacci_index_by_length(1000) 
p find_fibonacci_index_by_length(10000) 