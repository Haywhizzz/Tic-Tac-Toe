#!/usr/bin/env ruby

puts 'Wellcome to Tic Tac Toe!'
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

end