
require './polygon'
require './triangle'
require './isosceles'

describe Polygon do
  let(:isosceles) { Isosceles.new }

  describe Triangle do
    
    describe Isosceles do
      it "is a child of Polygon" do
        expect(Isosceles.ancestors).to include(Polygon)
      end
      it "is a child of Triangle also" do
        expect(Isosceles.ancestors).to include(Triangle)
      end
      it "have 2 equals sides" do
        iquals_sides = 2
        different_side = 3
        expect(Isosceles.new(iquals_sides,different_side)).to raise_error(ArgumentError)

      end
    end
  end
end
