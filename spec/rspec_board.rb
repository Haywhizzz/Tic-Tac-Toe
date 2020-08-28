require_relative '../lib/board'

describe Board do  
    let(:board) { Board.new([1, 2, 3, 'x', 'o']) }


  describe '#get_a_board_slot' do    
    it 'returns the coordinates for the symbol' do      
    expect(board.get_a_board_slot).to eql([1, 2, 3, 'x', 'o'])    
    end  
  end

  #describe '#sign' do   
  #   it 'returns the sign of the player' do      
  #  expect(player.symbol).to eql('X')    
  #   end  
 # end
end