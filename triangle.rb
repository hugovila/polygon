

class Triangle < Polygon

  def initialize *sides
    check_sides sides
  end
    
  def my_number_of_sides
      3
  end

  def check_sides sides
    raise ArgumentError.new("too many sides") if sides.size > 3
    raise ArgumentError.new("too few sides") if sides.size < 3
  end

end