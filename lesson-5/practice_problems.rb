# Problem 1
# How would you order this array of number strings by descending numeric value?

# arr = ['10', '11', '9', '7', '8']

arr.sort { |a, b| b.to_i <=> a.to_i}

# Problem 2
# How would you order this array of hashes based on the year of 
# publication of each book, from the earliest to the latest?

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

books.sort_by {|hash| hash[:published]}

# Problem 3
# For each of these collection objects demonstrate how you would reference the letter 'g'.

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

arr1[2][1][3]
arr2[1][:third][0]
arr3[2][:third][0][0]
hsh1['b'][1]
hsh2[:third].key(0)

# Problem 4
# For each of these collection objects where the value 3 occurs, 
# demonstrate how you would change this to 4.

# arr1 = [1, [2, 3], 4]

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# hsh1 = {first: [1, 2, [3]]}

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}


arr1[1][1] = 4
arr2[2] = 4
hsh1[:first][2][0] = 4
hsh2[['a']][:a][2] = 4

# Problem 5
# Given this nested Hash:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# figure out the total age of just the male members of the family.


munsters.keep_if {|k, v| v["gender"] == "male"}
age = 0

munsters.each {|k, v| age += v["age"]}

age

# Practice Problem 6
# One of the most frequently used real-world string properties is that 
# of "string substitution", where we take a hard-coded string 
# and modify it with various parameters from our program.

# Given the previous family hash, print out the name, age and gender of each family member:
# ...like this:

# (Name) is a (age)-year-old (male or female).

munsters.each do |k, v|
  puts "#{k} is a #{v["age"]}-year-old #{v["gender"]}."
end

# Problem 7
# Given this code, what would be the final values of a and b? 

# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2
# arr[1][0] -= a

a = 2
b = [3, 8]

# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.

# hsh = {first: ['the', 'quick'],
#        second: ['brown', 'fox'],
#        third: ['jumped'],
#        fourth: ['over', 'the', 'lazy', 'dog']
#       }

hsh.each do |_, v|
  v.each do |e|
    e.chars.each do |char|
      puts char if "aeiou".include?(char)
    end
  end
end

# Problem 9
# Given this data structure, return a new array of the same structure 
# but with the sub arrays being ordered 
# (alphabetically or numerically as appropriate) in descending order.

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end

# Problem 10
# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original 
# but where the value of each integer is incremented by 1.

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  new_hash = {}

  hsh.each do |k, v|
    new_hash[k] = v + 1
  end

  new_hash
end

# Problem 11
# Given the following data structure use a combination of methods, 
# including either the select or reject method, to return a new array 
# identical in structure to the original but containing only the integers 
# that are multiples of 3.

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_array|
  sub_array.select do |n|
    n % 3 == 0
  end
end

# Problem 12
# Given the following data structure, and without using the Array#to_h method, 
# write some code that will return a hash where the key is the first item in 
# each sub array and the value is the second item.

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = {}

arr.each do |el|
  hsh[el[0]] = el[1]
end

hsh

# Problem 13
# Given the following data structure, return a new array containing 
# the same sub-arrays as the original but ordered logically by only 
# taking into consideration the odd numbers they contain.

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
# The sorted array should look like this:

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

# Problem 14
# Given this data structure write some code to return an array 
# containing the colors of the fruits and the sizes of the vegetables. 
# The sizes should be uppercase and the colors should be capitalized.

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }
# The return value should look like this:

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

new_array = []

hsh.each do |_, v|
  if v[:type] == 'fruit'
    new_array << v[:colors].map {|el| el.capitalize }
  elsif v[:type] == 'vegetable'
    new_array << v[:size].upcase
  end
end

new_array

# Problem 16
# A UUID is a type of identifier often used as a way to uniquely identify items...
# which may not all be created by the same system. That is, without any form of synchronization, 
# two or more separate computer systems can create new items and label them with a UUID with 
# no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. 
# The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections 
# like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

def uuid
  str_array = "0123456789abcdef".chars
  new_array = []

  until new_array.size == 32
    new_array << str_array.sample
  end

uuid = "#{new_array.join[0..7]}-#{new_array.join[8..11]}-#{new_array.join[12..15]}\
-#{new_array.join[16..19]}-#{new_array.join[20..32]}"

uuid
end

p uuid








