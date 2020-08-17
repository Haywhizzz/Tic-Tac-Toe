#!/usr/bin/env ruby

puts 'Welcome to Tic Tac Toe!'
# This section we define the users name
# Each users has to sign their identity before game starts
print 'Player 1 :'
@name1 = gets.chomp
puts ' '
print 'Player 2 :'
@name2 = gets.chomp
puts ' '
puts 'Good luck!'
# Our board has 9 integers. We will describe in game logic how to play it.
# Hash symbols will change with integers.
puts 'This is the board'
def display_board
  puts '| # | # | # |'
  puts '-------------'
  puts '| # | # | # |'
  puts '-------------'
  puts '| # | # | # |'
end

puts "Turn of #{@name1}:"
input = gets.chomp
puts "Your input was #{input}"
puts 'This is the board now'
# Show the board
puts "Turn of #{@name2}:"
input = gets.chomp
puts "Your input was #{input}"
puts 'This is the board now'
# Show the board

# puts display_board == ['', '', '', '', '', '', '', '', '']
# Computer start index from 0. But people start counting from 1.
# We let computer know which number should it take.
def input_to_index(user_input)
  user_input.to_i - 1
end

# We set board equal to marker. This definiton changes elements position.
def player_move(board, index, marker)
  board[index] = marker
end

# This condition checks if position is taken or its a valid move.
# If position is taken before another player you can't sign your point here.
def position_taken?(board, index)
  if board[index] == '' || board[index] == '' || board[index].nil?
    false
  else
    true
  end
end

# In this definiton computer array starts counting from 0 until 8.
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

# In this section game asks player to enter a number between 1 and 9
def turn(board, invalid = false)
  puts 'That was an invalid input' if invalid
  puts 'Please enter 1-9:'
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    player_move(board, index, current_player(board))
    display_board(board)
  else
    turn(board, true)
  end

  # game informs the player if the selected move is a winning move
  # game informs the player if the selected move is a draw move

  # After finishing the game
  # if there is a win

  # Do you want to play again?
end

game_not_over = false
while game_not_over
  turn
  next unless there is a draw

  puts 'The game is drawn. Nobody won!'
  # check for winner
  check_for_draw if winner puts "#{name} You won the game!"
end
