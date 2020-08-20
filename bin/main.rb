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

loop do
  game.board.display_board
  print "\n"
  loop do
    puts game.ask_for_move
    move = gets.chomp.to_i
    a, b = game.get_player_move(move)
    begin
      game.board.get_a_board_slot(a, b)
    rescue TypeError
      puts "That's not a number from 1 to 9"
    else
      if game.board.set_a_board_slot(a, b, game.current_player.symbol) == false
        puts 'That cell is not empty'
      else
        game.board.set_a_board_slot(a, b, game.current_player.symbol)
        break
      end
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
