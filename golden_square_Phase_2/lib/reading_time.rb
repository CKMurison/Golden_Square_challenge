#file: reading_time.rb
def reading_time(text)
  words = text.split(" ")
  return (words.length / 200.to_f).ceil
end