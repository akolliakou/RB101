# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result


require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def integer?(number)
  number.to_i().to_s() == number
end

def float?(number)
  number.to_f().to_s() == number
end

def operation_to_message(op)
  word =case op
        when '1'
          (MESSAGES['addition'])
        when '2'
          (MESSAGES['subtraction'])
        when '3'
          (MESSAGES['multiplication'])
        when '4'
          (MESSAGES['division'])
        end
  x = "Checking that method value is still #{word}"

  word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()
  break unless name == ''
  prompt(MESSAGES['valid_name'])
end

prompt("Hello #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()
    break if valid_number?(number1)
    prompt(MESSAGES['invalid_first_number'])
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp()
    break if valid_number?(number2)
    prompt(MESSAGES['invalid_second_number'])
  end

  operator_prompt = <<~MSG
  What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['operator_choice'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['more_operations'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
