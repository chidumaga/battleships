require './lib/ship'

class Board

  def initialize
   @grids = {}
  end

  attr_reader :grids

  def place_ship(ship,position)
     @grids[position] = ship
  end

  def grid(location)
    @grids[location]
  end

end