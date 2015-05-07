class Ship

  attr_accessor :size_range

  def size arg
    @size_range = {"a"=>1 , "b"=>2 , "c"=>3 , "d"=>4}
    @size_range[arg]
  end

  def set_direction direction
    @direction = direction
  end

  def direction?
    @direction
  end

end