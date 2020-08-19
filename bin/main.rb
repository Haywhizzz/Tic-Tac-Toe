#!/usr/bin/env ruby
require_relative '../lib/game'
require_relative '../lib/board'
puts 'Welcome to Tic Tac Toe!'
print 'Player 1 :'
@name1 = gets.chomp
puts ' '
print 'Player 2 :'
@name2 = gets.chomp
puts ' '
puts 'Good luck!'
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

=begin
  loop do
    ask for move
    check if move is legal
    return error message if it isn't and then go back to top of loop with #continue keyword
    if move is legal
      check if the game is won or drawn
      return some message that the game is won or drawn and return from the loop using the #return keyword or the #break
      if the game is not won or drawn, 
        switch players
        then go back to top of the loop using #continue keyword

  end
rescue => exception
  
end
