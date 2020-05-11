# option 1
array = (1..99).to_a

array = array.select do |n|
  n.even?
end

puts array

# option 2

for i in 1..99
  if i.even?
    puts i
  end
end