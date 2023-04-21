require "diary"
require "diary_entry"

RSpec.describe "intergration" do
  it "lists them out" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Dune", "Frank Herbert")
      diary_entry_2 = DiaryEntry.new("Dong", "Mr Gong")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end


  describe "word count behaviour" do
    it "count all the words in the diary entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Dune", "Frank Herbert")
      diary_entry_2 = DiaryEntry.new("Dong", "Mr Gong")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 4
    end 
  end

  describe "reading time behaviour" do

    it "fails when wpm == 0" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Dune", "Frank Herbert")
      diary_entry_2 = DiaryEntry.new("Dong", "Mr Gong")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect{diary.reading_time(0)}.to raise_error "WPM must be positive"
    end

    it "Calculates readtime time where it fits exactly" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Dune", "Frank Herbert")
      diary_entry_2 = DiaryEntry.new("Dong", "Mr Gong")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 2
    end

    it "Calculates reading time for all entries where it falls over a minute" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Dune", "Frank Herbert")
      diary_entry_2 = DiaryEntry.new("Dong", "One two three")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 3
    end
  end

  describe "best reading time behaviour" do
    context "we have just one entry and it is readable in the time" do
    it "returns that entry" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Dune", "Frank Herbert")
      diary.add(diary_entry_1)
      result = diary.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq diary_entry_1
      end
    end

    context "If we have 1 entry that is unreadable in the time" do
      it "returns nil" do 
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Dune", "Frank Herbert Sherbert")
        diary.add(diary_entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end

    context "when we have more than one entry" do
      it "returns the longest entry readable in the time" do
        diary = Diary.new
        best_entry = DiaryEntry.new("Dune", "one two")
        diary.add(DiaryEntry.new("Dune", "one"))
        diary.add(best_entry)
        diary.add(DiaryEntry.new("Dune", "one two three"))
        diary.add(DiaryEntry.new("Dune", "one two three four"))
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end
  end
end 