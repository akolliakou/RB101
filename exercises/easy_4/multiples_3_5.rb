def multisum(num)
  array = []
  (1..num).each do |n|
    array << n if n % 3 == 0 || n % 5 == 0
  end

  array.sum
end


