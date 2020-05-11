def running_total(array)
  new_array = []
  sum = 0
  array.each do |n|
    sum += n
    new_array << sum
  end
  p new_array
end


running_total([1,2, 3, 4, 5])
