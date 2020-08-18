class Gameplay
  attr_accessor :winning_combinations
  private :winning_combinations
  def initialize
    winning_combinations = [
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
    winning_combinations.each do |win_combo|
      win_index_1 = win_combo[0]
      win_index_2 = win_combo[1]
      win_index_3 = win_combo[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

      if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
        return win_combo
      else
        return false
      end
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
