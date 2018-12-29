require 'guesser'
describe Guesser do
  describe ".guess" do
    context "no input" do
      it "returns error" do
        temp = Guesser.new({})
        expect(temp.guess("")).to eql("error")
      end
    end
    context "input more than one character" do
      it "returns error" do
        temp = Guesser.new({})
        expect(temp.guess("ab")).to eql("error")
      end
    end
    context "input non-letter character" do
      it "returns error" do
        temp = Guesser.new({})
        expect(temp.guess("3")).to eql("error")
        expect(temp.guess("/")).to eql("error")
        expect(temp.guess(" ")).to eql("error")
      end
    end
    context "input not in word" do
      it "returns false" do
        temp = Guesser.new({word: "pie"})
        expect(temp.guess("a")).to eql(false)
      end
    end
  end

  describe ".word" do
    context "default case" do
      it "returns word" do
        temp = Guesser.new({})
        expect(temp.word).to eql("word")
      end
    end
    context "other word" do
      it "returns that word" do
        temp = Guesser.new({word: "pie"})
        expect(temp.word).to eql("pie")
      end
    end
  end
end
