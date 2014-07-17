
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
      it "have 2 sides and not raise_error" do
        iquals_sides = 2
        different_side = 3
        
        expect{ Isosceles.new(iquals_sides,different_side) }.not_to raise_error
      end
      it "pass 3 sides and raise_error" do
        iquals_sides = 2
        different_side = 3
        
        expect{ Isosceles.new(iquals_sides, iquals_sides, different_side) }.to raise_error(ArgumentError)
      end
      it "should be closed" do
        expect { Isosceles.new(2,4) }.to raise_error(ArgumentError)
      end
      it "sides should have positive numbers" do
        expect{Isosceles.new(-3,3)}.to raise_error(ArgumentError)
        expect{Isosceles.new(-2,3)}.to raise_error(ArgumentError)
        expect{Isosceles.new(-4,2)}.to raise_error(ArgumentError)
      end
      it "all sides should be numbers" do
        expect{ Isosceles.new("lado") }.to raise_error(ArgumentError)
      end
      it "have a perimeter" do
        iquals_sides = 2
        different_side = 3
        perimeter = 7

        expect(Isosceles.new(iquals_sides,different_side).perimeter).to eq(perimeter)
      end
      it "return its own area also" do
        a = 2
        b = 2
        c = 3.605551275
        area = 0.25 * Math.sqrt( (a+(b+c)) * (c-(a-b)) * (c+(a-b)) * (a+(b-c)) )
        expect(Isosceles.new(a,c).area).to eq(area)
      end
    end
  end
end
