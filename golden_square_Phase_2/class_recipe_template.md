# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

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
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
music_tracker = MusicTracker.new
music_tracker.list = []

music_tracker = MusicTracker.new
music_tracker.add("Sabotage - The Beastie Boys")
music_tracker.list = ["Sabotage - The Beastie Boys"]

music_tracker = MusicTracker.new
music_tracker.add("Sabotage - The Beastie Boys")
music_tracker.add("Wish you were here - Pink Floyd")
music_tracker.add("Moanin - Bobby Timmons")
music_tracker.list = ["Sabotage - The Beastie Boys", "Wish you were here - Pink Floyd", "Moanin - Bobby Timmons"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._