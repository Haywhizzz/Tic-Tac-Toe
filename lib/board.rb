class Board
  def initialize

  end
  def winner(board)
    return board[won?(board)[0]] if won?(board)
  end
  def display_board
    puts '| # | # | # |'
    puts '-------------'
    puts '| # | # | # |'
    puts '-------------'
    puts '| # | # | # |'
  end

  def play(board)
    turn(board) until over?(board)
    if won?(board)
      winner(board) == 'X' || winner(board) == 'O'
      puts "Congratulations #{winner(board)}!"
    elsif draw?(board)
      puts 'Play again!'
    end
  end
end
