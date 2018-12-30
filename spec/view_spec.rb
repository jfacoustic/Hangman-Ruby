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
    (0..7).each do |x|
      context "x is #{x}" do
        it "get image #{x}, case 7 is win" do
          temp = View.new({})
          expect(temp.getImg(x)).to eql(thisImg(x))
        end
      end
    end
  end
end
