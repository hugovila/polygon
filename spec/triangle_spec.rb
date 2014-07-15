
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
      expect{Triangle.new(2,-3,2)}.to raise_error(ArgumentError)
    end
  end
end
