require 'view'

def thisImg(index)
  image = ""
  File.open('resources/h' + index.to_s + ".txt").each do |line|
    image += line
  end
  image
end

describe View do
  describe ".img_dir" do
    context "default" do
      it "should be 'resources/'" do
        temp = View.new({})
        expect(temp.img_dir).to eql('resources/')
      end
    end
  end
  describe ".img_header" do
    context "default" do
      it "should be 'h'" do
        temp = View.new({})
        expect(temp.img_header).to eql('h')
      end
    end
  end
  describe ".getImg" do
    (0..6).each do |x|
      context "default" do
        it "gets #{x}" do
          temp = View.new({})
          expect(temp.getImg(x)).to eql(thisImg(x))
        end
      end
    end
  end
end
