class LetterCounter
  def initialize(text)
    @text = text.downcase # "Digital Punk"
  end

  def calculate_most_common()
    counter = Hash.new(0)
    most_common = nil
    most_common_count = 1
    @text.chars.each do |char| # goes through each character of the string
      next unless is_letter?(char) # skips punctuation or spaces
      counter[char] = (counter[char] || 0) + 1    # takes each character and asigns it's value to 1 or increments, depending on if seen before
      if counter[char] > most_common_count        # if a letter pops up twice,
        most_common = char                        # most_common becomes that letter
        most_common_count = counter[char]        #! mcc becomes 1 bigger than the frequency of the biggest number
        
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("DiDDeDedDely")
p counter.calculate_most_common

# Intended output:
# [2, "i"]

# Current output:
# [3, "D"]