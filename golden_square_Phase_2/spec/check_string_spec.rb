require "check_string"

RSpec.describe "check string method" do
  context "if given an empty string" do
    it "fails" do
      expect { check_string("")}.to raise_error "This is not a sentence"
    end
  end
  context "if given a string with #TODO" do
    it "returns true" do
      expect(check_string("#TODO, buy toothpaste")).to eq true
    end
  end
  context "if given a string without #TODO" do
    it "fails" do
      expect(check_string("But toothpaste")).to eq false
    end
  end
end