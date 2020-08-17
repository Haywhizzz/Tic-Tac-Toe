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
