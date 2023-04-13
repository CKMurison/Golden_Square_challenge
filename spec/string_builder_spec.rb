require "string_builder"

RSpec.describe StringBuilder do
    it "returns output of a string" do
        string_builder = StringBuilder.new
        string_builder.add("Timothy")
        string_builder.size
        result = string_builder.output
        expect(result).to eq "Timothy"
    end
    it "returns the length of the current string" do
        string_builder = StringBuilder.new
        result = string_builder.size
        expect(result).to eq 0
    end
end