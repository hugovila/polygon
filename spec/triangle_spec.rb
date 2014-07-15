
require './polygon'
require './triangle'

describe Polygon do
  let(:triangle) { Triangle.new }

  describe Triangle do
    it "is a child of Polygon" do
      one_ancestor_to_expect = Polygon
      expect(Triangle.ancestors).to include(one_ancestor_to_expect)
    end
    it "should have 3 sides" do
      sides_of_triangle = 3
      expect(Triangle.new.my_number_of_sides).to eq(sides_of_triangle)
    end
    
  end
end
