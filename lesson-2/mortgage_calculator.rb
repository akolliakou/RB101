require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def clear_screen
  system('clear') || system('cls')
end

def valid_name?(string)
  string != '' && string.to_i.to_s != string
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def integer?(number)
  number.to_i.to_s == number && number.to_i > 0
end

def float?(number)
  number.to_f.to_s == number && number.to_f > 0
end

def amount_final(amount)
  amount.to_f.round(2)
end

def apr_monthly(apr)
  apr = apr.to_f / 100 / 12
  apr.round(4)
end

def duration_final(months)
  months.to_i * 12
end

def calculation_final(amount, apr, duration)
  amount * (apr / (1 - (1 + apr)**(-duration)))
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  break if valid_name?(name)
  prompt(MESSAGES['valid_name'])
end

prompt("Hi, #{name}. Let's get started!")

loop do
  amt_input = ''
  loop do
    prompt(MESSAGES['amount'])
    amt_input = gets.chomp
    break if valid_number?(amt_input)
    prompt(MESSAGES['invalid_amount'])
  end

  apr_input = ''
  loop do
    prompt(MESSAGES['apr'])
    apr_input = gets.chomp
    break if valid_number?(apr_input)
    prompt(MESSAGES['invalid_apr'])
  end

  years_input = ''
  loop do
    prompt(MESSAGES['years'])
    years_input = gets.chomp
    break if valid_number?(years_input)
    prompt(MESSAGES['invalid_years'])
  end

  summary = <<-SUM.strip
   Thank you, #{name}!
   For a loan amount of: £#{amount_final(amt_input)}
   With a monthly: #{(apr_monthly(apr_input) * 100).to_s + '%'} APR
   Over: #{duration_final(years_input)} months
   Your monthly repayment will be: £#{calculation_final(amount_final(amt_input), \
                                                        apr_monthly(apr_input), \
                                                        duration_final(years_input)).round(2)}
  SUM

  prompt(summary)

  prompt(MESSAGES['more_calculations'])
  answer = gets.chomp
  break unless answer.downcase == 'yes'
  clear_screen
end

prompt(MESSAGES['goodbye'])
