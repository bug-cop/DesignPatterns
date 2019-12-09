require_relative 'task.rb'
# leaf
class FillPanTask < Task
  def initialize
    super('Fill Pan')
  end

  def time_to_complete
    1.5
  end
end
