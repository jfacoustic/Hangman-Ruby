require 'view'
board1 = "______\n|\n|\n|\n|\n"

describe View do
  describe ".current" do
    context "no mistakes" do
      it "displays empty gallows" do
        print(board1)
        expect(View.current).to eql(board1)
      end
    end
  end
end
