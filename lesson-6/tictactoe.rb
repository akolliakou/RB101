require 'yaml'
MESSAGES = YAML.load_file('tictactoe.yml')

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WHO_IS_FIRST = 'Choose'

def prompt(msg)
  puts "=> #{msg}"
end

def messages(message)
  prompt(MESSAGES[message])
end

def clear_screen
  system('clear')
end

def valid_number?(num)
  num % 1 == 0
end

def choose_player
  messages('who_goes_first')
  loop do
    answer = gets.chomp.downcase
    if answer == 'p'
      return 'Player'
    elsif answer == 'c'
      return 'Computer'
    end
    break if answer == 'p' || answer == 'c'
    messages('invalid_contestant')
  end
end

def first_player
  if WHO_IS_FIRST == 'Choose'
    choose_player
  elsif WHO_IS_FIRST == 'Player'
    'Player'
  else
    'Computer'
  end
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer' : 'Player'
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  clear_screen
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialise_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def find_at_risk_square(line, board, marker)
  if board.values_at(line[0], line[1], line[2]).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def place_piece!(brd, current_player)
  if current_player == "Player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}."
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square) 
    messages('invalid_square')
  end
  brd[square] = PLAYER_MARKER
end

def computer_strategy(board, marker)
  square = ''

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, marker)
    break if square
  end
  square
end

def pick_square_five(board)
  if board[5] == INITIAL_MARKER
    5
  end
end

def random_square(board)
  empty_squares(board).sample
end

def computer_places_piece!(board)
  offensive_computer = computer_strategy(board, COMPUTER_MARKER)
  defensive_computer = computer_strategy(board, PLAYER_MARKER)

  square = offensive_computer || defensive_computer ||
           pick_square_five(board) || random_square(board)

  board[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score(winner, score)
  winner == 'Player' ? score['Player'] += 1 : score['Computer'] += 1
end

def display_game_winner(board)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won this game!"
  else
    messages('tie')
  end
end

def display_final_winner(score)
  score[:player] == 5 ? (messages('player_won')) : (messages('computer_won'))
end

def play_another_game
  messages('another_game')
  gets.chomp.downcase
end

def start_new_match
  messages('another_match')
  gets.chomp.downcase
end

messages('welcome_and_rules')

loop do
  score = { 'Player' => 0, 'Computer' => 0 }

  loop do
    board = initialise_board
    current_player = first_player

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    display_game_winner(board)

    update_score(detect_winner(board), score)

    prompt("The game score is player: #{score['Player']}, \
computer: #{score['Computer']}")

    break if score['Player'] == 5 || score['Computer'] == 5

    play_another_game_choice = play_another_game
    break unless play_another_game_choice.downcase == 'y'
    clear_screen
  end

  display_final_winner(score)

  start_new_match_choice = start_new_match
  break unless start_new_match_choice.downcase == 'y'
  clear_screen
end

messages('goodbye')
