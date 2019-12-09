require_relative 'task.rb'
# leaf
class FrostTask < Task
  def initialize
    super('Frost')
  end

  def time_to_complete
    1.75
  end
end
