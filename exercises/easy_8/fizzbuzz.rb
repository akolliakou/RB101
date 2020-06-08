def fizzbuzz(num1, num2)
  (num1..num2).each do |n|
    if n % 3 == 0 && n % 5 == 0
      puts 'FizzBuzz'
    elsif n % 5 == 0
      puts 'Buzz'
    elsif n % 3 == 0
      puts 'Fizz'
    else
      puts n
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz