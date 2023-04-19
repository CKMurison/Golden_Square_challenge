class MusicTracker

  def initialize
    @songs = []
  end

  def add(song)
    @songs << song
  end

  def list
    return @songs
  end

end

songs = MusicTracker.new
songs.add("swamp world - Lizzo")
p songs.list