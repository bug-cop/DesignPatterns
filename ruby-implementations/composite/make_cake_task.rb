require_relative 'make_batter_task.rb'
require_relative 'fill_pan_task.rb'
require_relative 'bake_task.rb'
require_relative 'frost_task.rb'
require_relative 'composite_task.rb'

# Composite Task
# Make Cake
#     |__ Make Batter
#     |__ Fill Pan
#     |__ Bake
#     |__ Frost
class MakeCakeTask < CompositeTask
  def initialize
    super('Make Cake')
    add_sub_task(MakeBatterTask.new)
    add_sub_task(FillPanTask.new)
    add_sub_task(BakeTask.new)
    add_sub_task(FrostTask.new)
  end
end

MakeCakeTask.new