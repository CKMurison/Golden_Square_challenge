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