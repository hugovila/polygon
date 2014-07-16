

class Triangle < Polygon

  TRIANGLE_SIDES = 3
  POLYGON_SIDES = TRIANGLE_SIDES

  def initialize *sides
    @sides = sides
    check_sides(my_number_of_sides)
    @bigger_side = sides.max
    @smaller_side = sides.min
    @medium_sides = sides[1]
    check_closed
    check_positive sides
  end

  

  def area
    0.25 * Math.sqrt( (@bigger_side+(@medium_sides+@smaller_side)) * (@smaller_side-(@bigger_side-@medium_sides)) * (@smaller_side+(@bigger_side-@medium_sides)) * (@bigger_side+(@medium_sides-@smaller_side)) )
  end

  def my_number_of_sides
      POLYGON_SIDES
  end

  private

  def check_closed
    raise ArgumentError.new("Triangle not closed") if @smaller_side * @medium_sides <= @bigger_side
  end
  


end