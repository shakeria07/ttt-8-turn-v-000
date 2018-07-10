def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  user_input.to_i-1
end

def move(board, position, char="X")
  board[position] = char
end

def position_taken?(board, index)
position.to_i.between?(1,9) and not position_taken?(board, position.to_i - 1)
end

def valid_move?(board, index)
    index = index.to_i - 1
    index.between?(0,8) && !position_taken?(index.to_i)
end

def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input.to_i
    if valid_move?(board, index)
      move(index, current_player)
      display_board
    else
      turn
   end
end

def position_taken?(board,position)
  return false if [" ", "", nil].include?(board[position])
  return true if ["X", "O"].include?(board[position])
  raise "#{board[position]} is not a valid move"
end
index = 0

def turn(board)
  puts "Please enter 1-9:"
end
