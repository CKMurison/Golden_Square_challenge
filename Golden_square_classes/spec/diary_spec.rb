require "diary"

RSpec.describe "Diary entry class" do
  context "When inistialized" do
    it "has an empty list" do
      diary = Diary.new
      result = diary.all
      expect(result).to eq []
    end

    it "Has a word count of 0" do
      diary = Diary.new
      expect(diary.count_words).to eq 0
    end
    it "Has a reading time of 0" do
      diary = Diary.new
      expect(diary.reading_time(2)).to eq 0
    end
    it "Has a best readable entry of nil" do
      diary = Diary.new
      expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
    end
  end 
end 