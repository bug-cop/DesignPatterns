# leaf
require_relative 'task.rb'
class MixTask < Task
  def initialize
    super('Mix')
  end

  def time_to_complete
    1.75
  end
end
 