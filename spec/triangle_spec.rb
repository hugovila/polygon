
require './polygon'
require './triangle'
require './isosceles'

describe Polygon do
  let(:triangle) { Triangle.new }

  describe Triangle do
    it "is a child of Polygon" do
      one_ancestor_to_expect = Polygon
      expect(Triangle.ancestors).to include(one_ancestor_to_expect)
    end
    it "should have 3 sides" do
      sides_of_triangle = 3
      expect(Triangle.new(2,3,4).my_number_of_sides).to eq(sides_of_triangle)
    end
    it "need to have 3 sides" do
      expect { Triangle.new(2,3) }.to raise_error(ArgumentError)
    end
    it "need to have 3 sides" do
      expect { Triangle.new(2,3,3,4) }.to raise_error(ArgumentError) 
    end
    it "should be closed" do
      expect { Triangle.new(2,3,7) }.to raise_error(ArgumentError)
    end
    it "sides should have positive numbers" do
      expect{Triangle.new(2,-3,4)}.to raise_error(ArgumentError)
      expect{Triangle.new(-2,-3,4)}.to raise_error(ArgumentError)
      expect{Triangle.new(2,3,-4)}.to raise_error(ArgumentError)
    end
    it "all sides should be numbers" do
      expect{ Triangle.new(2, 4, "lado") }.to raise_error(ArgumentError)
    end
    it "return its own area" do
      a = 2
      b = 3
      c = 4
      area = 0.25 * Math.sqrt( (a+(b+c)) * (c-(a-b)) * (c+(a-b)) * (a+(b-c)) )
      expect(Triangle.new(a,b,c).area).to eq(area)
    end
    it "returns its own perimeter" do
      expect(Triangle.new(2,5,4).perimeter).to eq(11)
    end
    describe Isosceles do
      it "is a child of Polygon" do
        expect(Isosceles.ancestors).to include(Polygon)
      end
    end
  end
end
