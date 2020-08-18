class Board
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

  def play(board)
    turn(board) until over?(board)
    if won?(board)
      winner(board) == 'X' || winner(board) == 'O'
      puts "Congratulations #{winner(board)}!"
    else draw?(board)
         puts 'Tic-Tac-Toe!'
    end
  end
end