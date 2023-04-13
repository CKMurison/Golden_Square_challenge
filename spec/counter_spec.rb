require "counter"

RSpec.describe Counter do
    it "Returns numbers counted so far" do
        counter = Counter.new
        counter.add(12)
        result = counter.report
        expect(result).to eq "Counted to 12 so far"
    end
end