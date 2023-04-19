require "todo_list"

RSpec.describe ToDo do 
  context "initializes with an empty list" do
    it "returns []" do
      result = ToDo.new
      expect(result.list).to eq []
    end
  end
  context "when adding one task" do 
    it "adds it to the list" do
      result = ToDo.new
      result.add("toilet")
      expect(result.list).to eq ["toilet"]
    end
  end
  context "when adding mulitple task" do 
    it "adds it to the list" do
      result = ToDo.new
      result.add("toilet")
      result.add("swamp")
      result.add("bbq")
      result.add("greggs")
      expect(result.list).to eq ["toilet", "swamp", "bbq", "greggs"]
    end
  end
  context "When removing a task in the list" do
    it "removes task" do
      result = ToDo.new
      result.add("toilet")
      result.add("swamp")
      result.add("bbq")
      result.add("greggs")
      result.remove_finished_task("toilet")
      expect(result.list).to eq ["swamp", "bbq", "greggs"]
    end
  end
  context "When removing a task that is not in the list" do
    it "returns This task doesn't exist" do
      result = ToDo.new
      result.add("toilet")
      result.add("swamp")
      result.add("bbq")
      result.add("greggs")
      expect(result.remove_finished_task("coding")).to eq "This task doesn't exist"
    end
  end
end