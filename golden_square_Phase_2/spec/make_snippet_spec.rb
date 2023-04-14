#Design
#A method called make_snippet that takes a string as an argument and returns the first five words
# and then a '...' if there are more than that.

require "make_snippet"

RSpec.describe "make_snippet method" do
  context "Given an empty string" do
    it "returns an empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end
  
  context "Given a string fewer than 5 words" do
    it "Returns 5 words" do
      result = make_snippet("Hello I really love cheese")
      expect(result).to eq "Hello I really love cheese"
    end
  end

  context "Given a string more than 5 words" do
    it "Returns the first 5 words followed by an elipse" do
      result = make_snippet("Hello I really really love cheese it's so great")
      expect(result).to eq "Hello I really really love ..."
    end
  end
end