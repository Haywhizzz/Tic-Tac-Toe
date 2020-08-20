require_relative './player'
require_relative './array_extensions'
require_relative './board'

class Game
  attr_accessor :board, :current_player, :second_player
  def initialize(board=Board.new, player_one, player_two)
    @current_player = player_one
    @second_player = player_two
    @board = board
  end

   def switch_player
    @current_player, @second_player = @second_player, @current_player
  end
  def ask_for_move
    "#{current_player.name}, please make your move by choosing a number from 1 to 9."
  end
  def get_player_move(player_move)
    board_position_mapping(player_move)
  end

