require './polygon'
require './triangle'
require './equilateral'

describe Polygon do

  describe Triangle do
    
    describe Equilateral do
      it "is a child of Polygon" do
        expect(Equilateral.ancestors).to include(Polygon)
      end
      it "is a child of Triangle also" do
        expect(Equilateral.ancestors).to include(Triangle)
      end
      it "have 1 sides and not raise_error" do
        iquals_sides = 2
        
        expect{ Equilateral.new(iquals_sides) }.not_to raise_error
      end
      it "pass 3 sides and raise_error" do
        iquals_sides = 2
        iquals_sides = 2
        
        expect{ Equilateral.new(iquals_sides, iquals_sides) }.to raise_error(ArgumentError)
      end
      it "have a perimeter" do
        iquals_sides = 2
        perimeter = 7

        expect(Equilateral.new(iquals_sides).perimeter).to eq(perimeter)
      end
      it "return its own area also" do
        a = 2
        b = 2
        c = 2
        area = 0.25 * Math.sqrt( (a+(b+c)) * (c-(a-b)) * (c+(a-b)) * (a+(b-c)) )
        expect(Triangle.new(a,b,c).area).to eq(area)
      end
    end
  end
end