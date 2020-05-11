def prompt(message)
  puts "=> #{message}"
end

puts "Enter the first number:"
first_num = gets.chomp.to_i

puts "Enter the second number:"
second_num = gets.chomp.to_i

prompt("#{first_num} + #{second_num} = #{first_num + second_num}")
prompt( "#{first_num} - #{second_num} = #{first_num - second_num}")
prompt("#{first_num} * #{second_num} = #{first_num * second_num}")
prompt("#{first_num} / #{second_num} = #{first_num / second_num}")
prompt("#{first_num} % #{second_num} = #{first_num % second_num}")
prompt("#{first_num} ** #{second_num} = #{first_num ** second_num}")