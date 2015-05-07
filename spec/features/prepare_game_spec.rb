feature 'A simple game of Battleships' do

  scenario 'The player can place a ship on the board' do
    board = Board.new
    board.create 1
    ship = Ship.new
    board.place_ship ship,1
    expect(board.grid(1)).to eq ship
  end

  scenario 'and not outside the board.' do
    board = Board.new
    board.create 3
    expect { board.grid(4) }.to raise_error 'Out of bounds'
  end

  scenario 'Player should be able to choose from a range of ship sizes' do
    ship = Ship.new
    ship.size = 'a'
    expect(ship.size).to eq 1
    #make sure player does not choose size outside range
  end

  scenario 'and be able to choose the direction the ships face' do
    ship = Ship.new
    ship.set_direction :vertical
    expect(ship.direction?).to eq :vertical
    #make sure player can only make this vertical and horizontal
  end

  scenario 'and the ships should be entirely on the board' do
    board = Board.new
    board.create 3
    ship = Ship.new
    ship.size = 'b'
    board.place_ship ship, 3
    expect { board.prevent_overlap ship, 3 }.to raise_error "Overlap!"
    #factor in the direction and what end of the array it will be overspilling
  end
end