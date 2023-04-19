require "music_tracker"

RSpec.describe MusicTracker do
  context "when initialized" do
    it "returns an empty array" do
      result = MusicTracker.new
      expect(result.list).to eq []
    end
  end
  context "when adding a song" do
    it "add song to list" do
      result = MusicTracker.new
      result.add("Sabotage - The Beastie Boys")
      expect(result.list).to eq ["Sabotage - The Beastie Boys"]
    end
  end
  context "When adding multiple songs" do
    it "adds them to the list" do
      result = MusicTracker.new
      result.add("Sabotage - The Beastie Boys")
      result.add("Wish you were here - Pink Floyd")
      result.add("Moanin - Bobby Timmons")
      expect(result.list).to eq ["Sabotage - The Beastie Boys", "Wish you were here - Pink Floyd", "Moanin - Bobby Timmons"]
    end
  end
end
