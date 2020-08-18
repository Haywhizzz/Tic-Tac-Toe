class Board
  def draw?(board)
    if !won?(board) && full?(board)
      true
    elsif !won?(board) && !full?(board)
      false
    else won?(board)
         false
    end
  end

  def over?(board)
    return true if draw?(board) || won?(board) || full?(board)
  end

  def winner(board)
    return board[won?(board)[0]] if won?(board)
  end
end
