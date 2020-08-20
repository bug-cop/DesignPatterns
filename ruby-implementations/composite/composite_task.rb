require_relative 'task.rb'

# container for composite tasks
class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
    @parent = self
  end

  def remove_sub_task
    @sub_tasks.delete(task)
  end

  def calculate_time_required
    @sub_tasks.reduce(0.0){ |time, task| time += task.time_to_complete }
  end
end
