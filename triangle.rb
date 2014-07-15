

class Triangle < Polygon

  TRIANGLE_SIDES = 3

  def initialize *sides
    check_sides(sides, my_number_of_sides)
    @bigger_side = sides.max
    @smaller_side = sides.min
    @medium_sides = sides[1]
    check_closed
    check_positive sides
  end
    
  def my_number_of_sides
      TRIANGLE_SIDES
  end

  def check_closed
    raise ArgumentError.new("Triangle not closed") if @smaller_side * @medium_sides <= @bigger_side
  end
  
  def check_positive sides
    sides.each { |side| check_negative side }
  end

  def check_negative side
    raise ArgumentError.new("Sides should be positive sides") if side.arg != 0
  end


end