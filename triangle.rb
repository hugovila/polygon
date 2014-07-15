

class Triangle < Polygon

  TRIANGLE_SIDES = 3

  def initialize *sides
    check_sides(sides, my_number_of_sides)
    @bigger_side = sides.max
    @smaller_side = sides.min
    @medium_sides = sides[1]
    check_closed
  end
    
  def my_number_of_sides
      TRIANGLE_SIDES
  end


  def check_closed
    raise ArgumentError.new("Triangle not closed") if @smaller_side * @medium_sides <= @bigger_side
  end
  

end