require './polygon'
require './quadrangle'

describe Polygon do

  describe Quadrangle do

    it "is a child of Polygon" do
        expect(Quadrangle.ancestors).to include(Polygon)
    end


  end
end
