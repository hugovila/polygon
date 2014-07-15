
class Polygon

  def perimeter
    result = 0
    @sides.collect { |side| result = result + side }
    result
  end

  def check_sides(sides, polygon_sides)
    raise ArgumentError.new("too many sides") if sides.size > polygon_sides
    raise ArgumentError.new("too few sides") if sides.size < polygon_sides
  end
  
  def check_positive sides
    sides.each { |side| check_negative side }
  end

  def check_negative side
    raise ArgumentError.new("Sides should be positive sides") if side.arg != 0
  end
  
end