require './polygon'
require './quadrilateral'
require './parallelogram'
require './rhombus'


describe Polygon do

  describe Quadrilateral do

    describe Parallelogram do

      describe Rhombus do

        it "is a child of Polygon" do
          one_ancestor_to_expect = Polygon
          expect(Rhombus.ancestors).to include(one_ancestor_to_expect)
        end
        it "is a child of Quadrilateral" do
          one_ancestor_to_expect = Quadrilateral
          expect(Rhombus.ancestors).to include(one_ancestor_to_expect)
        end
        it "is a child of Parallelogram" do
          one_ancestor_to_expect = Parallelogram
          expect(Rhombus.ancestors).to include(one_ancestor_to_expect)
        end
        it "have 2 sides and not raise_error" do
          equals_sides = 2
          other_eguals_sides = 3
          
          expect{ Rhombus.new(equals_sides,other_eguals_sides) }.not_to raise_error
        end
        it "should have 2 sides" do
          sides_of_rhombus = 4
          expect(Rhombus.new(4,5).my_number_of_sides).to eq(sides_of_rhombus)
        end
        it "need to have 2 sides" do
          expect { Rhombus.new(2) }.to raise_error(ArgumentError)
        end
        it "need to have 2 sides" do
          expect { Rhombus.new(2,3,6,5,4) }.to raise_error(ArgumentError)
        end
        it "sides should have positive numbers" do
          expect{Rhombus.new(2,-3)}.to raise_error(ArgumentError)
          expect{Rhombus.new(-2,-3)}.to raise_error(ArgumentError)
          expect{Rhombus.new(-4,-5)}.to raise_error(ArgumentError)
        end
        it "all sides should be numbers" do
          expect{ Rhombus.new("lado", 5) }.to raise_error(ArgumentError)
        end
        it "returns its own perimeter" do
          expect(Rhombus.new(5,4).perimeter).to eq(18)
        end
        it "return its own area" do
          base = 2
          height = 3
          area = base * height
          expect(Rhombus.new(base,height).area).to eq(area)
        end
      end
    end
  end
end