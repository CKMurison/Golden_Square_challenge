require "todo_list"

RSpec.describe TodoList do
  context "when initialized" do
    it "has an empty list" do
      todo = TodoList.new
      expect(todo).to eq todo
    end
  end
end