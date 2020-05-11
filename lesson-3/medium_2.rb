

# Question 1:
#------------
def fun_with_ids
  a_outer = 42 # 1

  a_outer_id = a_outer.object_id # 1
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # 42, 1

  1.times do
    a_outer_inner_id = a_outer.object_id # 1
    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block." # 1

    a_outer = 22 # 2
    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # 22, 1, 2

    a_inner = a_outer # 2

    a_inner_id = a_inner.object_id # 2
    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)." # 22, 2, 2
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block." # 22, 1, 2
  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" # "ugh ohhhhh"
end

# Question 2:
#------------
def fun_with_ids
  a_outer = 42 

  a_outer_id = a_outer.object_id # 1
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # 42, 1

  an_illustrative_method(a_outer)

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call." # 42, 1, 1
  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # "ugh ohhhhh"
end


def an_illustrative_method(a_outer)
  puts "a_outer_id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method." # 1, 1

  a_outer = 22 
  puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # 22, 1, 2

  a_inner = a_outer

  a_inner_id = a_inner.object_id
  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)." # 22, 2, 2
end

# Question 3:
#------------
# My string looks like this now: pumpkins
# My array looks like this now: ["pumpkins", "rutabaga"]

# Both my_string and my-array are passed by value into the method as references 
# to a String and Arrary object, respectively.
# Within the method, String#+= is reassignment, a non-mutating method, which
# now makes my_string point to a new object. So my_string inside the method 
# and my_string outside the method are pointing to different objects. However,
# Array#<<< is a mutating method which means that it modifies the existing my_array
# outside the method - it mutates the caller and so my_array points to the same, 
# albeit modified object inside and outside the method.

# Question 4:
# -----------
# My string looks like this now: pumpkinsrutabaga
# My array looks like this now: ["pumpkins"]

# Question 5:
# -----------
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 6:
# -----------
def color_valid(color)
  color == "blue" || color == "green"
end












