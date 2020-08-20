#!/usr/bin/env ruby
require_relative '../lib/game.rb'
require_relative '../lib/board.rb'
require_relative '../lib/array_extensions.rb'
require_relative '../lib/player.rb'
require_relative '../lib/slot.rb'

puts 'Welcome to Tic Tac Toe!'
print 'Player 1 :'
player_one_name = gets.chomp.capitalize
player_one = Player.new(player_one_name, 'X')
puts "Welcome, #{player_one.name}, you will play as 'X'."

print 'Player 2 :'
player_two_name = gets.chomp.capitalize
player_two = Player.new(player_two_name, 'O')
puts "Welcome, #{player_two.name} you will play as 'O'."
game = Game.new(player_one, player_two)

puts "#{game.current_player.name} will begin the game"

puts 'This is the board'
board = Board.new
board.display_board

puts "Turn of #{@name1}:"
input = gets.chomp
puts "Your input was #{input}"
puts 'This is the board now'

puts "Turn of #{@name2}:"
input = gets.chomp
puts "Your input was #{input}"
puts 'This is the board now'
puts display_board == ['', '', '', '', '', '', '', '', '']

def input_to_index(user_input)
  user_input.to_i - 1
end

def player_move(board, index, marker)
  board[index] = marker
end

def position_taken?(board, index)
  if board[index] == '' || board[index] == '' || board[index].nil?
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
end

game_not_over = false
while game_not_over
  turn
  next unless there is a draw

  def winner?(board)
    board[won?(board)[0]] unless won?(board)
  end

  def play(board)
    counter = 0
    until counter == 9
      turn(board)
      counter += 1
    end
  end
end
