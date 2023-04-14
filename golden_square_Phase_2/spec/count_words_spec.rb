#A method called count_words that takes a string as 
#an argument and returns the number of words in that string.

require "count_words"

RSpec.describe "count words method" do
  context "given a string" do
    it "returns the number of words" do
      result = count_words("This world is beautiful")
      expect(result).to eq 4
    end
  end
end