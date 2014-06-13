def initialize_board
  board = {}
  (1..9).each {|position| board[position] = ' ' }
  board
end

def draw_board(b)
  system 'clear'
  puts
  puts "     |     |"
  puts "  #{b[1]}  |  #{b[2]}  |  #{b[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{b[4]}  |  #{b[5]}  |  #{b[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{b[7]}  |  #{b[8]}  |  #{b[9]}"
  puts "     |     |"
  puts
end

def empty_squares(b)
  b.keys.select { |position| b[position] == ' ' }
end

def player_places_piece(b)
  begin
    puts "Choose a position (#{empty_squares(b)}) to place a piece:"
    position = gets.chomp.to_i
  end until empty_squares(b).include?(position)
  b[position] = 'X'
end

def computer_places_piece(b)
  position = empty_squares(b).sample
  b[position] = 'O'
end

def check_winner(b)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_lines.each do |line|
    return "Player" if b.values_at(*line).count('X') == 3
    return "Computer" if b.values_at(*line).count('O') == 3
  end
  nil
end

def nine_positions_are_filled?(b)
  empty_squares(b) == []
end

def announce_winner(winner)
  puts "#{winner} won!"
end

board = initialize_board
draw_board(board)

begin
  player_places_piece(board)
  draw_board(board)
  computer_places_piece(board)
  draw_board(board)
  winner = check_winner(board)
end until winner || nine_positions_are_filled?(board)

if winner
  announce_winner(winner)
else
  puts "It's a tie."
end