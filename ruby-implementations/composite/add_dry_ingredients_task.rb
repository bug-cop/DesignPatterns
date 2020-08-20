require_relative 'task.rb'

# leaf
class AddDryIngredientsTask < Task
  def initialize
    super('Dry Ingredients')
  end

  def time_to_complete
    1.0
  end
end
