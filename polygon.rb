
class Polygon

  

  def check_sides(sides, polygon_sides)
    raise ArgumentError.new("too many sides") if sides.size > polygon_sides
    raise ArgumentError.new("too few sides") if sides.size < polygon_sides
  end
  
end