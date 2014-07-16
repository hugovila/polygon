require './polygon'
require './quadrilateral'

describe Polygon do

  describe Quadrilateral do

    it "is a child of Polygon" do
        expect(Quadrilateral.ancestors).to include(Polygon)
    end
    

  end
end
