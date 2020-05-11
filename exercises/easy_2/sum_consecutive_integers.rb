def compute_sum(num)
  (1..num).inject do |sum, n|
    sum + n
  end
end

def compute_product(num)
  (1..num).inject do |product, n|
    product * n
  end
end

def valid_number?(num)
  num != 0 && num.positive?
end

def valid_choice?(string)
  string != '' && string.to_i.to_s != string
end

num = 0
loop do
  puts "Please enter an integer greater than 0:"
  num = gets.chomp.to_i
  break if valid_number?(num)
    puts "That's not a valid number. Try again."
end

choice = ''
loop do
  puts "Please enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp
  break if valid_choice?(choice)
    puts "That's not a valid choice. Enter 's' or 'p'."
end

if choice == 's'
  puts "The sum of the integers between 1 and #{num} is #{compute_sum(num)}"
elsif choice == 'p'
  puts "The product of integers between 1 and #{num} is #{compute_product(num)}"
end
