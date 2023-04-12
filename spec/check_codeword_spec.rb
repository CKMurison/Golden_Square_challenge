require "check_codeword"

RSpec.describe "check_codeword method" do
    it "returns a wrong message if given the wrong codeword" do
        result = check_codeword("yellow")
        expect(result).to eq "WRONG!"
    end

    it "returns a correct message if horse is given" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "returns a mixed message if first char == h and last char == e" do
        result = check_codeword("hande")
        expect(result).to eq "Close, but nope."
    end
end