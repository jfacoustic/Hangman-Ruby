require 'view'

describe View do
  describe ".current" do
    context "default" do
      it "should be zero" do
        temp = View.new({})
        expect(temp.current).to eql(0)
      end
    end
  end
  describe ".img_dir" do
    context "default" do
      it "should be '../resources/'" do
        temp = View.new({})
        expect(temp.img_dir).to eql('../resources/')
      end
    end
  end
end
