

class Triangle < Polygon

  TRIANGLE_SIDES = 3

  

  def my_number_of_sides
    @polygon_sides = TRIANGLE_SIDES
  end


  def area
    bigger_side = @sides.max
    smaller_side = @sides.min
    medium_sides = @sides.sort[1]
    factor = 1.0 / 4
    factor * Math.sqrt( (bigger_side+(medium_sides+smaller_side)) * (smaller_side-(bigger_side-medium_sides)) * (smaller_side+(bigger_side-medium_sides)) * (bigger_side+(medium_sides-smaller_side)) )
  end

  

end