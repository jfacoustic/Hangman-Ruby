require 'picker'
describe Picker do
  describe '.pick' do
    context 'no dictionary' do
      it "returns error" do
        temp = Picker.new({})
        expect(temp.pick).to eql("error")
      end
    end
    context 'dictionary exists' do
      it "returns a word from the dictionary" do
        dictionary = ["abc", "cat", "dog"]
        temp = Picker.new({dictionary: dictionary})
        expect(dictionary).to include(temp.pick)
      end
    end
  end
end
