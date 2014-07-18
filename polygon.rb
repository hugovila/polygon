
class Polygon

  def initialize *sides
    @sides = sides
    check_float
    check_sides(my_number_of_sides)
    check_closed
    check_positive sides
    
  end

  def perimeter
    @sides.inject { |perimeter, side| perimeter += side }
  end

  def my_number_of_sides
    raise NotImplementedError.new("You can't instantiate a polygon")
  end

  def check_sides (polygon_sides)
    raise ArgumentError.new("too many sides") if @sides.size > my_number_of_sides
    raise ArgumentError.new("too few sides") if @sides.size < my_number_of_sides
  end
  
  def check_positive sides
    sides.each { |side| check_negative side }
  end

  def check_negative side
    raise ArgumentError.new("Sides should be positive sides") if side.arg != 0
  end
  
  def check_closed
    max_side = @sides.max
    closed = (perimeter - max_side) > max_side
    raise ArgumentError.new("Polygon not closed") unless closed
  end

  def check_float
    @sides.each { |side| raise_error_if_not_a_float_number side }
  end

  def raise_error_if_not_a_float_number side
    raise ArgumentError.new("Not a float number") if side.to_f.class != Float
  end

end