require './lib/ship'

class Board

  def initialize
   @grids = [nil]
  end

  attr_accessor :grids

  def create num
    @grids = @grids*num
  end

  def place_ship ship, position
    # prevent_overlap(ship, position)
    @grids[position-1] = ship
  end

  def grid location
    fail "Out of bounds" if location > @grids.length
    @grids[location-1]
  end

  def prevent_overlap ship, position
    fail "Overlap!" if (position+1) + ship.size > @grids.length
  end

end