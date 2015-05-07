class Ship

  def initialize
    @size_range = {"a"=>1 , "b"=>2 , "c"=>3 , "d"=>4}
  end

  attr_reader :size , :size_range

  def size=(letter)
    @size = @size_range[letter]
  end

  def set_direction direction
    @direction = direction
  end

  def direction?
    @direction
  end

end
