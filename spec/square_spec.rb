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
      end
    end
  end
end