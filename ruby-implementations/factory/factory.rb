require_relative 'shape_factory'

shape_factory = ShapeFactory.new
circle = shape_factory.get_shape('CIRCLE')
circle.draw

rectangle = shape_factory.get_shape('RECTANGLE')
rectangle.draw

square = shape_factory.get_shape('SQUARE')
square.draw


class Shape
  def initialize(*args)
    # code for dynamically creating attributes from args list
  end
  def draw
    raise "not allowed here"
  end
end

class Triangle < Shape
  def draw
    "drawing triangle"
  end
end

class Square < Shape
  def draw
    "drawing square"
 end
end

# ...more shapes here

class ShapeFactory
  def self.build(shape, *args)
    case shape
    when :triangle
     Triangle.new(*args)
    when :square
     Square.new(*args)
    when :circle
      Circle.new(*args)
    end
  end
end