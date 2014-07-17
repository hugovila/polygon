
class Parallelogram < Quadrilateral

  def initialize equals_sides, other_eguals_sides
    super equals_sides, other_eguals_sides, equals_sides, other_eguals_sides
  end

  def area
    base = @sides.min
    height = @sides.max
    base * height
  end



end