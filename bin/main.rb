#!/usr/bin/env ruby

puts 'Welcome to Tic Tac Toe!'
# This section we define users name
# Each users has to sign their identity before start game
print 'Player 1 :'
@name1 = gets.chomp
puts ' '
print 'Player 2 :'
@name2 = gets.chomp
puts ' '
puts 'Good luck!'
puts display_board == [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
# Our board has 9 integers. We will describe in game logic how to play it.
# Hash symbols will change with integers.
def display_board
  puts '| # | # | # |'
  puts '-------------'
  puts '| # | # | # |'
  puts '-------------'
  puts '| # | # | # |'
end

# Computer start index 0. But people start counting from 1.
# We let computer now which number should it take.
def input_to_index(user_input)
  user_input.to_i - 1
end

# We set board equal to marker. This definiton changes elements position.
def player_move(board, index, marker)
  board[index] = marker
end

# This condition checking if position is taken or its a valid move.
# If position taken before another player you can't sign your point here.
def position_taken?(board, index)
  if board[index] == '' || board[index] == ' ' || board[index].nil?
    false
  else
    true
  end
end

# In this definiton computer array starting from 0 until 8.
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

# In this section game asks player to enter a number between 0 and 9
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

# Its includes players move. If number is divisible by 2, returns 'X'. Else returns 'O'
def turn_count(board)
  counter = 0
  board.each do |space|
    counter += 1 if ['%wX', '%wO'].include?(space)
  end
end
