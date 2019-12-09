# component
class Task
  attr_accessor :name, :parent

  def initialize(name)
    @name = name
    @parent = nil
    puts "#{@name} initiated"
  end

  def time_to_complete
    0.0
  end
end
