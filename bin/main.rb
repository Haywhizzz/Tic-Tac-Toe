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
@game = Game.new(player_one, player_two)

puts "#{@game.current_player.name} will begin the game"

def input_loop
  test = true
  while test
    puts @game.ask_for_move
    move = gets.chomp.to_i
    a, b = @game.get_player_move(move)
    begin
      @game.board.get_a_board_slot(a, b)
    rescue TypeError
      puts "That's not a number from 1 to 9"
    else
      if @game.board.set_a_board_slot(a, b, @game.current_player.symbol) == false
        puts 'That cell is not empty'
      else
        @game.board.set_a_board_slot(a, b, @game.current_player.symbol)
        test = false
      end
    end
  end
end

def state_check
  if @game.board.game_ended?
    puts @game.end_game_message
    @game.board.display_board
    nil
  else
    @game.switch_player
  end
end

def main_loop
  loop do
    @game.board.display_board
    print "\n"
    input_loop
    break unless state_check
  end
end

main_loop
