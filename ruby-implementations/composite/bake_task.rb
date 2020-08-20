require_relative 'task.rb'

# leaf
class BakeTask < Task
  def initialize
    super('Bake')
  end

  def time_to_complete
    2
  end
end
