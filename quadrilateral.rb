

class Quadrilateral < Polygon

  QUADRILATERAL_SIDES = 4
  POLYGON_SIDES = QUADRILATERAL_SIDES

  def initialize *sides
    @sides = sides
  end

  def my_number_of_sides
    POLYGON_SIDES
  end

end