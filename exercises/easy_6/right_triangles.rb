def triangle(integer)
  (1..integer).reverse_each do |num|
    puts ' ' * (integer - (num)) + '*' * (num)
  end
end

triangle(5)
triangle(9)