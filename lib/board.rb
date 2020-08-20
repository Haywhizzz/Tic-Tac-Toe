require_relative './slot'
require_relative './array_extensions'
class Board
  attr_reader :board
  def initialize
    @board = Array.new(3){Array.new(3){Slot.new}}
  end
  def get_a_board_slot(x_coord, y_coord)
      board[x_coord][y_coord]
  end
  def set_a_board_slot(x_coord, y_coord, value)
    if get_a_board_slot(x_coord,y_coord).value.to_i.positive?
      get_a_board_slot(x_coord,y_coord).value = value
    else
      false
    end
  end
  def display_board
    displayed_board = []
    board.each do |array|
      displayed_board << array.map(&:value)
    end
    displayed_board.each { |array| p array }
  end
  def game_ended?
    return :win if won?
    return :draw if drawn?
    false
  end
  def drawn?
    board.flatten.map(&:value).no_cell_empty?
  end
  def board_diagonals
    [
      [get_a_board_slot(0, 0), get_a_board_slot(1, 1), get_a_board_slot(2, 2)],
      [get_a_board_slot(0, 2), get_a_board_slot(1, 1), get_a_board_slot(2, 0)]
    ]
  end
  def winning_config
    board + board.transpose + board_diagonals
  end
  def winning_values(winning_config)
    winning_config.map(&:value)
  end
  def won?
    winning_config.each do |config|
      next if winning_values(config).all_cells_empty?
      return true if winning_values(config).all_cells_same?
    end
    false
  end
end