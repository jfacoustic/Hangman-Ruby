require 'picker'
describe Picker do
  describe '.pick' do
    context 'no dictionary' do
      it "returns error" do
        temp = Picker.new({})
        expect(temp.pick).to eql("error")
      end
    end
  end
end
