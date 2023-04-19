require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
  end
  describe "#count_words" do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry.new("title", "The wolrd today")
      expect(diary_entry.count_words).to eq 3
    end
  end
  it "returns 0 when no contents" do
    diary_entry = DiaryEntry.new("title", "")
    expect(diary_entry.count_words).to eq 0
  end
  describe "#reading_time" do
    context "given a number of words(200)" do
      it "returns the ceiling of number of words read in the contents" do
        diary_entry = DiaryEntry.new("title", "word " * 550)
        expect(diary_entry.reading_time(200)).to eq 3
      end
    end
  end
  describe "#reading_chunk" do
    context "with a text readable within the given mintues" do
      it "returns the full text" do
        diary_entry = DiaryEntry.new("title", "one two three")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "one two three"
      end
    end
  
  context "with a contents that takes too long to read" do
    it "returns a chunk of the text that is readable in the given time" do
      diary_entry = DiaryEntry.new("title", "one two three")
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two" 
    end  
  
  it "returns next chunk when next called" do
    diary_entry = DiaryEntry.new("title", "one two three")
    diary_entry.reading_chunk(2, 1)
    chunk = diary_entry.reading_chunk(2, 1)
    expect(chunk).to eq "three" 
      end
  it "restarts after reading the whole contents" do
    diary_entry = DiaryEntry.new("title", "one two three")
    diary_entry.reading_chunk(2, 1)
    diary_entry.reading_chunk(2, 1)
    chunk = diary_entry.reading_chunk(2, 1)
    expect(chunk).to eq "one two" 
      end
  it "restarts if finishing exactly at the end" do
    diary_entry = DiaryEntry.new("title", "one two three")
    diary_entry.reading_chunk(2, 1)
    diary_entry.reading_chunk(1, 1)
    chunk = diary_entry.reading_chunk(2, 1)
    expect(chunk).to eq "one two" 
      end
    end
  end
end  