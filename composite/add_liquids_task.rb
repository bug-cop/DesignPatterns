require_relative 'task.rb'

# leaf
class AddLiquidsTask < Task
  def initialize
    super('Add Liquids')
  end

  def time_to_complete
    1.75
  end
end
