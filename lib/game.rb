class Gameplay
  attr_accessor :winning_combo
  private :winning_combo
  def initialize
    @winning_combo = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]
  end

  def won?(board)
    winning_combo.each do |win_combo|
      win_index1 = win_combo[0]
      win_index2 = win_combo[1]
      win_index3 = win_combo[2]

      position1 = board[win_index1]
      position2 = board[win_index2]
      position3 = board[win_index3]

      return win_combo if position1 == position2 && position2 == position3 && position_taken?(board, win_index1)

      return false
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
    elsif won?(board)
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
