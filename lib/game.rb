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
