1. As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

Include the name of the method, its parameters, return value, and side effects.
2. 
reading_time = calculate_reading_time(text)
text is a string
reading_time is an int representing minutes
3. 
EXAMPLE TESTS

calculate_reading_time(0)
  => 0

calculate_reading_time(1)
 => 1

calculate_reading_time(TWO_HUNDRED_WORDS)
 => 1

calculate_reading_time(FOUR_HUNDRED_WORDS)
 => 2