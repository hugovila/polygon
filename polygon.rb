
class Polygon

  def initialize *sides
    @sides = sides
    run_checks
  end

  def run_checks
    normalize_sides
    check_positive
    check_sides
    check_closed
  end

  def perimeter
    @sides.inject { |perimeter, side| perimeter += side }
  end



  private

  def check_sides
    raise ArgumentError.new("too many sides") if @sides.size > my_number_of_sides
    raise ArgumentError.new("too few sides") if @sides.size < my_number_of_sides
  end
  def my_number_of_sides
    raise NotImplementedError.new("You can't instantiate a polygon")
  end



  def check_positive
    @sides.each { |side| check_negative side if check_a_number? side }
  end
  def check_negative side
    raise ArgumentError.new("Sides should be positive sides") if side.arg != 0
  end

  def check_closed
    max_side = @sides.max
    check_polygon_closed max_side if check_a_number? max_side
  end

  def check_a_number? side
    side.class == Float || side.class == Fixnum
  end

  def check_polygon_closed max_side
    #max_side = @sides.max
    closed = (perimeter - max_side) > max_side
    raise ArgumentError.new("Polygon not closed") unless closed
  end



  def normalize_sides
    @sides.each { |side| raise ArgumentError.new("Can not be a String") if side.class == String }
  end



end