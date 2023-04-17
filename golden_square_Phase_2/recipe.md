1. As a user
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

Include the name of the method, its parameters, return value, and side effects.
2. 
check_string(text)
# text is a string with words in it
# check_string return true if #TODO is included in text

3. 
EXAMPLE TESTS

check_string("")
# throws an error

check_grammar("#TODO, buy toothpaste")
# return true

check_grammar("Buy toothpaste")
# return false