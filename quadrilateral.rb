

class Quadrilateral < Polygon

  QUADRILATERAL_SIDES = 4

  def initialize *sides
    @sides = sides
    @polygon_sides = QUADRILATERAL_SIDES
    check_sides(my_number_of_sides)
  end

end