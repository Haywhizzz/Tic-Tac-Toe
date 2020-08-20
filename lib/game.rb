class Gameplay
  attr_accessor :WINNING
  private :WINNING
  def initialize; end
  WINNING = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ].freeze

  def won?(board)
    WIN_COMBINATIONS.detect do |win_combination|
      win_combination.all? { |win_index| board[win_index] == 'X' } ||
        win_combination.all? { |win_index| board[win_index] == 'O' }
    end
  end

  def full?(board)
    if board.any? { |index| index.nil? || index == ' ' }
      false
    else
      true
    end
  end

  def draw?(board)
    if !won?(board) && full?(board)
      true
    elsif !full?(board) && !won?(board)
      false
    else won?(board)
         false
    end
  end

  def over?(board)
    if draw?(board) || won?(board) || full?(board)
      true
    else
      false
    end
  end
end
