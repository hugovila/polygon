

class Triangle < Polygon

  TRIANGLE_SIDES = 3

  def initialize *sides
    check_sides(sides, my_number_of_sides)
  end
    
  def my_number_of_sides
      TRIANGLE_SIDES
  end



  

end