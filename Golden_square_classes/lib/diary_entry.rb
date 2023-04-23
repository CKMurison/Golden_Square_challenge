class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm) 
    fail "WPM must be positive" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

end