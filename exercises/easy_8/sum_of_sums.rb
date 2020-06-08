def sum_of_sums(arr)
  sum = 0

  arr.each_with_index do |n, idx|
    sum += (n * (arr.length - idx))
  end

  sum
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35