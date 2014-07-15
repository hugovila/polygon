

class Triangle < Polygon

  TRIANGLE_SIDES = 3
  POLYGON_SIDES = TRIANGLE_SIDES

  def initialize *sides
    check_sides(sides, my_number_of_sides)
    @bigger_side = sides.max
    @smaller_side = sides.min
    @medium_sides = sides[1]
    check_closed
    check_positive sides
  end
    
  def my_number_of_sides
      POLYGON_SIDES
  end

  def check_closed
    raise ArgumentError.new("Triangle not closed") if @smaller_side * @medium_sides <= @bigger_side
  end
  

end