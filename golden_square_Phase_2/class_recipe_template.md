# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class ToDo
  def initialize 
   @list = []
  end

  def add(task)
    @list << task
  end

  def remove_finished_task(task)
  if @list.include?(task)
      @list.delete(task)
  else 
    return "This task doesn't exist"
  end 
  end

  def list
    return @list
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
todo = ToDo.new
todo.list => []

todo = ToDo.new
todo.add("toilet")
todo.list = ["toilet"]

todo = ToDo.new
todo.add("toilet")
todo.add("bbq")
todo.add("swamp")
todo.add("greggs")
todo.list = ["toilet", "bbq", "swamp", "greggs"]

todo = ToDo.new
todo.add("toilet")
todo.add("bbq")
todo.add("swamp")
todo.add("greggs")
todo.remove_finished_task("toilet")
todo.list = ["bbq", "swamp", "greggs"]

todo = ToDo.new
todo.add("toilet")
todo.add("bbq")
todo.add("swamp")
todo.add("greggs")
todo.remove_finished_task("nice") = "This task does not exist"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._