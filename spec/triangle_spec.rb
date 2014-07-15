
require './polygon'
require './triangle'

describe Polygon do
  let(:triangle) { Triangle.new }

  describe Triangle do
    it "is a child of Polygon" do
      one_ancestor_to_expect = Polygon
      expect(Triangle.ancestors).to include(one_ancestor_to_expect)
    end
  end
end
