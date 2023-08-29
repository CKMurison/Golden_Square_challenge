require "todo"
require "todo_list"

RSpec.describe "todo list class intergration" do
  context "todo list add method" do
    it "fails if object is not from todo class" do
      result = TodoList.new
      todo = 'task'
      expect { result.add(todo) }.to raise_error "This task is not from the Todo class"
    end
  

  it "adds a todo to the list and shows it as incomplete" do
    result = TodoList.new
    todo = Todo.new("eat soup")
    todo2 = Todo.new("drink milk")
    result.add(todo)
    result.add(todo2)
    expect(result.incomplete).to eq([todo, todo2])
  end

  it "adds a todo to the list and shows as complete" do
    result = TodoList.new
    todo = Todo.new("eat soup")
    todo2 = Todo.new("drink milk")
    result.add(todo)
    result.add(todo2)
    todo.mark_done!
    todo2.mark_done!
    expect(result.complete).to eq([todo, todo2])
  end
  
  it "marks all todos as complete with the give_up method" do
    result = TodoList.new
    todo1 = Todo.new("Walk the dog")
    todo2 = Todo.new("Walk the cat")
    todo3 = Todo.new("Walk the hamster")
    todo4 = Todo.new("Walk the fish")
    todo5 = Todo.new("Walk the cat again")
    todo6 = Todo.new("Walk the hamster again")
    result.add(todo1)
    result.add(todo2)
    result.add(todo3)
    result.add(todo4)
    result.add(todo5)
    result.add(todo6)
    result.give_up!
    expect(result.complete).to eq([todo1, todo2, todo3, todo4, todo5, todo6])
    end
  end
end