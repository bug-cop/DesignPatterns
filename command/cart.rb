# cart
class Cart
  attr_accessor :cart_values

  def current_cart
    @cart_values
  end

  def add_item(item)
    # adds item to db
    puts "#{item.name} added to the cart"
  end

  def remove_item(item)
    # deletes item from db
    puts "#{item.name} removed from the cart"
  end
end
