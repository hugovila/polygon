
class Polygon

  def initialize *sides
    @sides = sides
    @max_side = @sides.max
    run_checks
  end

  def run_checks
    normalize_sides
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


  def check_closed
    closed = (perimeter - @max_side) > @max_side
    raise ArgumentError.new("Polygon not closed") unless closed
  end


  def normalize_sides
    @sides.each do 
      |side|
      raise ArgumentError.new("Can not be a String") if side.class == String
      raise ArgumentError.new("Must be a Numeric") unless side.is_a? Numeric
      raise ArgumentError.new("Sides should be positive sides") if side < 0
    end
  end



end