# composite task
require_relative 'add_dry_ingredients_task.rb'
require_relative 'add_liquids_task.rb'
require_relative 'mix_task.rb'
require_relative 'composite_task.rb'
# Make Batter
#   |__ Add Dry Ingredients
#   |__ Add Liquids
#   |__ Mix
class MakeBatterTask < CompositeTask
  def initialize
    super('Make Batter')
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end
