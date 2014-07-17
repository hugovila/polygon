require './polygon'
require './quadrilateral'

describe Polygon do

  describe Quadrilateral do

    it "is a child of Polygon" do
        expect(Quadrilateral.ancestors).to include(Polygon)
    end
    it "should have 4 sides" do
      sides_of_quadrilateral = 4
      expect(Quadrilateral.new(2,3,4,5).my_number_of_sides).to eq(sides_of_quadrilateral)
    end
    it "need to have 4 sides" do
      expect { Quadrilateral.new(2,3) }.to raise_error(ArgumentError)
    end
    it "need to have 4 sides" do
      expect { Quadrilateral.new(2,3,6,5,4) }.to raise_error(ArgumentError)
    end
    it "should be closed" do
      expect { Quadrilateral.new(2,3,7,2) }.to raise_error(ArgumentError)
    end
    it "sides should have positive numbers" do
      expect{Quadrilateral.new(2,-3,4,1)}.to raise_error(ArgumentError)
      expect{Quadrilateral.new(-2,-3,4,-1)}.to raise_error(ArgumentError)
      expect{Quadrilateral.new(2,3,-4,-5)}.to raise_error(ArgumentError)
    end
    it "all sides should be numbers" do
      expect{ Quadrilateral.new(2, 4, "lado", 5) }.to raise_error(ArgumentError)
    end
    
  end
end
