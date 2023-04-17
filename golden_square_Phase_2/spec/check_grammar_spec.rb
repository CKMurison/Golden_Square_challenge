require "check_grammar"

RSpec.describe "check grammar method" do
  context "given an empty string" do
    it "fails" do
      expect { check_grammar("") }.to raise_error "Not a sentence."
    end
  end
  context "Given a sentance with correct grammar" do
    it "returns true" do
      expect(check_grammar("Hello I am Cameron.")).to eq true
    end
  end
  context "given a sentence with incorrect grammar" do
    it "fails" do
      expect(check_grammar("hello I am cameron")).to eq false
    end
  end
end