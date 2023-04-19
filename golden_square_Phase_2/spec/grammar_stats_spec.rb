require "grammar_stats"

RSpec.describe GrammarStats do
  context "given an empty string" do
    it "fails" do
      expect { check_grammar("") }.to raise_error "Not a sentence."
    end
  end
  context "Given a sentence with correct grammar" do
    it "returns true" do
      expect(check_grammar("Hello I am Cameron.")).to eq true
    end
  end
  context "given a sentence with incorrect grammar" do
    it "fails" do
      expect(check_grammar("hello I am cameron")).to eq false
    end
  end
  context "returns an integer based on the correct % of grammar" do
    it "returns 0" do
     grammar_stats = GrammarStats.new
     result = grammar_stats.percentage_good
     expect(result).to eq 0
    end
  end
  context "returns an integer based on the correct % of grammar" do
    it "returns 100" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hello world.")
    expect(grammar_stats.percentage_good).to eq 100
    end
  end 
  context "returns an integer based on the correct & of grammar" do
    it "returns 50" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("hello world")
      grammar_stats.check("hello world")
      grammar_stats.check("Hello world.")
      grammar_stats.check("Hello world.")
      expect(grammar_stats.percentage_good).to eq 50
    end
  end
end