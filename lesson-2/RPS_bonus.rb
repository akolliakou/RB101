require 'yaml'
MESSAGES = YAML.load_file('RPS_bonus.yml')

VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'sp' => 'Spock'
}

def prompt(message)
  puts("=> #{message}")
end

def valid_name?(string)
  string != '' && string.to_i.to_s != string
end

def win?(first, second)
  conditions = { 'rock' => ['lizard', 'scissors'],
                 'paper' => ['rock', 'Spock'],
                 'scissors' => ['paper', 'lizard'],
                 'lizard' => ['Spock', 'paper'],
                 'Spock' => ['scissors', 'rock'] }
  conditions[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt(MESSAGES['win_player'])
  elsif win?(computer, player)
    prompt(MESSAGES['win_computer'])
  else
    prompt(MESSAGES['tie'])
  end
end

def update_score(player, computer, score)
  if win?(player, computer)
    score['player'] += 1
  elsif win?(computer, player)
    score['computer'] += 1
  end
end

def play_again_choice
  prompt(MESSAGES['play_again'])
  gets.chomp.downcase
end

def clear_screen
  system('clear') || system('cls')
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  break if valid_name?(name)
  prompt(MESSAGES['invalid_name'])
end

prompt("Hi #{name}. Let's get started!")

loop do
  score = {
    'player' => 0,
    'computer' => 0
  }

  loop do
    choice = ''
    loop do
      prompt(MESSAGES['choice'])
      choice = gets.chomp
      break if VALID_CHOICES.key?(choice)
      prompt(MESSAGES['invalid_choice'])
    end

    computer_choice = VALID_CHOICES[VALID_CHOICES.keys.sample]

    prompt("You chose: #{VALID_CHOICES[choice]} \
      Computer chose: #{computer_choice} ")

    display_results(VALID_CHOICES[choice], computer_choice)

    update_score(VALID_CHOICES[choice], computer_choice, score)
    
    prompt("The score is you: #{score['player']},\
 computer: #{score['computer']}")

    break if score['player'] == 5 || score['computer'] == 5
  end

  prompt("The final score is you: #{score['player']},\
 computer: #{score['computer']}")

  play_again = play_again_choice
  break unless play_again.downcase == 'yes'
  clear_screen

end

prompt(MESSAGES['exit'])