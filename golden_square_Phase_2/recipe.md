As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

Include the name of the method, its parameters, return value, and side effects.

reading_time = tells you how many words are read in an amount of time
reading_time(time(integer)) 
RETURN VALUE = how_much_text_read

EXAMPLE TESTS
reading_time(10) => 2000 words
reading_time(100) => 20000 words
reading_time(1) => 200 words
reading_time(0) => 0 words
reading_time(nil) => error message