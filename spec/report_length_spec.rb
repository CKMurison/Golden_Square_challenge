require "report_length"

RSpec.describe "check report_length method" do
    it "returns amount of characters in a string" do
        result = report_length("salad")
        expect(result).to eq "This string was 5 characters long."
    end
    it "returns amount of characters in a string" do
        result = report_length("windego")
        expect(result).to eq "This string was 7 characters long."
    end
end