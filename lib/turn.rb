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

def valid_move?(board,position)
  if  position.to_i.between?(0,8) && position_taken?
    true
  else
     false
  end
end

def position_taken?(board,position)
  if board[position] == " "
    false
    elsif board[position] == ""
    false
    elsif  board[position] == nil
    false
    else   board[position] == "X" || "O"
    true

  end
end

index = 0
expect(valid_move?(board, index)).to be_truthy

index = 4
expect(valid_move?(board, index)).to be_falsey

index = -1
expect(valid_move?(board, index)).to be_falsey
end
