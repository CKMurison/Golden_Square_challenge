require "diary_entry"

RSpec.describe "diary entry class" do
  it "contrsucts" do
    diary_entry = DiaryEntry.new("Title", "contents")
    expect(diary_entry.title).to eq "Title"
    expect(diary_entry.contents).to eq "contents"
  end

  describe "#count_words" do
    it "returns the number of words in the contents as an integer" do
      diary_entry = DiaryEntry.new("Title", "one two three")
      expect(diary_entry.count_words).to eq 3
    end

      it "returns 0 if contents empty" do
      diary_entry = DiaryEntry.new("Title", "")
      expect(diary_entry.count_words).to eq 0
    end

    it "returns 1 if contents empty" do
      diary_entry = DiaryEntry.new("Title", "one")
      expect(diary_entry.count_words).to eq 1
    end
  end

  describe "#reading_time" do

    it "fails if the wpm is 0" do
      diary_entry = DiaryEntry.new("Title", "one two three four five")
      expect { diary_entry.reading_time(0) }.to raise_error "WPM must be positive"
    end

    it "returns reading time for contents" do
      diary_entry = DiaryEntry.new("Title", "one two three four five")
      expect(diary_entry.reading_time(2)).to eq 3
    end

      it "returns reading time for contents" do
      diary_entry = DiaryEntry.new("Title", "")
      expect(diary_entry.reading_time(2)).to eq 0
    end

    it "returns reading time for contents" do
      diary_entry = DiaryEntry.new("Title", "one")
      expect(diary_entry.reading_time(2)).to eq 1
    end
  end
end 