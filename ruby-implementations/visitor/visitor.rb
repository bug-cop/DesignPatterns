class Product
  attr_reader :name, :price
  def initialize(name:, price:)
    @name = name
    @price = price
  end
end

class Order
  def initialize
    @products = []
  end
  def add_product(product)
    @products << product
  end
end


module Visitable
  def accept(visitor)
    visitor.visit(self)
  end
end



class Product
  include Visitable
  attr_reader :name, :price
  def initialize(name:, price:)
    @name = name
    @price = price
  end
end
class Order
  include Visitable
  def initialize
    @products = []
  end
  def add_product(product)
    @products << product
  end
  def accept(visitor)
    @products.each do |product|
      product.accept(visitor)
    end
  end
end


class Visitor
  def visit(subject)
    raise NotImpelementedError.new
  end
end

class ProductsPrinterVisitor < Visitor
  def visit(subject)
    puts "Product: #{subject.name} - $#{subject.price}"
  end
end