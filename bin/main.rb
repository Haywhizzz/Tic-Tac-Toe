#!/usr/bin/env ruby

puts 'Welcome to Tic Tac Toe!'
print 'Player 1 :'
@name1 = gets.chomp
puts ' '
print 'Player 2 :'
@name2 = gets.chomp
puts ' '
puts display_board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

def display_board
  puts '| # | # | # |'
  puts '-------------'
  puts '| # | # | # |'
  puts '-------------'
  puts '| # | # | # |'
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def player_move(board, index, marker)
  board[index] = marker
end

def position_taken?(board, index)
  if board[index] == '' || board[index] == ' ' || board[index].nil?
    false
  else
    true
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true
  else
    false
  end
end

def current_player(board)
  turn_count(board).even? ? 'X' : 'O'
end

def turn(board)
  puts 'Please enter 1-9:'
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    player_move(board, index, current_player(board))
    display_board(board)
  else
    turn(board)
  end
end

def turn_count(board)
  counter = 0
  board.each do |space|
    counter += 1 if space == 'X' || space == 'O'
  end
end
