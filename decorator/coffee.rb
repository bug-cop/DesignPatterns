# interface
# defines a coffee class with price method
class CoffeeInterface
  def price
    raise NotImplementedError, "#{self.class} has no implementation of #{__method__}"
  end
end

# define simple coffee class from the interface
# override price method with default value
class SimpleCoffee < CoffeeInterface
  def price
    10
  end
end

# base decorator class takes coffee object
# CoffeeDecorator is_a CoffeeInterface
# CoffeeDecorator has_a SimpleCoffee
class CoffeeDecorator < CoffeeInterface
  attr_accessor :coffee

  def initialize(coffee)
    @coffee = coffee
  end
end

# sugar coffee with some extra price
class SugarCoffee < CoffeeDecorator
  def price
    @coffee.price + 10
  end
end

# cream coffee with some extra price
class CreamCoffee < CoffeeDecorator
  def price
    @coffee.price + 15
  end
end

# blackk coffee with some extra price
class BlackCoffee < CoffeeDecorator
  def price
    @coffee.price + 5
  end
end


# every coffee is a simple coffee.

# order simple coffee
simple_coffee = SimpleCoffee.new
puts "simple coffeee price: #{simple_coffee.price}"

# order sugar coffee
sugar_coffee = SugarCoffee.new(SimpleCoffee.new)
puts "sugar coffeee price: #{sugar_coffee.price}"

# order cream coffee
cream_coffee = CreamCoffee.new(SimpleCoffee.new)
puts "cream coffeee price: #{cream_coffee.price}"

# order blackk coffee
black_coffee = BlackCoffee.new(SimpleCoffee.new)
puts "blackk coffeee price: #{black_coffee.price}"

# order sugar with cream coffee
sugar_with_cream_coffee = CreamCoffee.new(SugarCoffee.new(SimpleCoffee.new))
puts "sugar with cream coffeee price: #{sugar_with_cream_coffee.price}"

# coffee with combination of all
special_coffee = BlackCoffee.new(CreamCoffee.new(SugarCoffee.new(SimpleCoffee.new)))
puts "special coffeee price: #{special_coffee.price}"

# outputs
# ruby decorator/coffee.rb
# simple coffeee price: 10
# sugar coffeee price: 20
# cream coffeee price: 25
# blackk coffeee price: 15
# sugar with cream coffeee price: 35

# Note: Adapters vs Decorators
# A decorator adds to or changes an objects responsibilities.
# An adapter gives an object a completely new interface.
