require './polygon'
require './quadrilateral'
require './parallelogram'
require './square'


describe Polygon do

  describe Quadrilateral do

    describe Parallelogram do

      describe Square do

        it "is a child of Polygon" do
          one_ancestor_to_expect = Polygon
          expect(Square.ancestors).to include(one_ancestor_to_expect)
        end
        it "is a child of Quadrilateral" do
          one_ancestor_to_expect = Quadrilateral
          expect(Square.ancestors).to include(one_ancestor_to_expect)
        end
        it "is a child of Parallelogram" do
          one_ancestor_to_expect = Parallelogram
          expect(Square.ancestors).to include(one_ancestor_to_expect)
        end
        it "have 1 sides and not raise_error" do
          equals_sides = 3
          
          expect{ Square.new(equals_sides) }.not_to raise_error
        end
        it "can be created with one side" do
          sides_of_square = 4
          expect(Square.new(3).my_number_of_sides).to eq(sides_of_square)
        end
        it "need to have 1 sides" do
          expect { Square.new(2,2) }.to raise_error(ArgumentError)
        end
        it "need to have 1 sides" do
          expect { Square.new(2,3,6,5,4) }.to raise_error(ArgumentError)
        end
        it "sides should have positive numbers" do
          expect{Square.new(-3)}.to raise_error(ArgumentError)
          expect{Square.new(-3)}.to raise_error(ArgumentError)
          expect{Square.new(-4)}.to raise_error(ArgumentError)
        end
        it "all sides should be numbers" do
          expect{ Square.new("lado") }.to raise_error(ArgumentError)
        end
        it "returns its own perimeter" do
          expect(Square.new(5).perimeter).to eq(20)
        end
        it "return its own area" do
          base = 2
          area = base * base
          expect(Square.new(base).area).to eq(area)
        end
      end
    end
  end
end