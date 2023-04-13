require "gratitudes"
RSpec.describe Gratitudes do
    it "returns an empty gratitude" do
        gratitudes = Gratitudes.new
        result = gratitudes.format
        expect(result).to eq "Be grateful for: "
    end
    it "returns a gratitude of users choice" do
        gratitudes = Gratitudes.new
        gratitudes.add("Salami")
        result = gratitudes.format
        expect(result).to eq "Be grateful for: Salami"
    end
    it "returns joined gratitudes" do
        gratitudes = Gratitudes.new
        gratitudes.add("Toast")
        gratitudes.add("Rain")
        gratitudes.add("envelopes")
        result = gratitudes.format
        expect(result).to eq "Be grateful for: Toast, Rain, envelopes"
    end
end