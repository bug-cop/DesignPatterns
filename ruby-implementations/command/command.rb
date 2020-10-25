
# In one of our projects, we have the following requirement:

# Create a record in DB.
# Call a service to update a related record.
# Call another service to log a ticket.
# To perform this in a transactional manner, each operation is implemented as a command with undo operation.
# At the end of each step, the command is pushed onto a stack. If the operation fails at some step,
# then we pop the commands from the stack and call undo operation on each of the command popped out.
# The undo operation of each step is defined in that command implementation to reverse the earlier command.execute().

# Hope this helps.

# command
class AddItemToCart
  attr_reader :item, :cart

  # takes item and cart object
  def initialize(item, cart)
    @item = item
    @cart = cart
  end

  def execute
    @cart.add_item(@item)
  end

  def unexecute
    @cart.remove_item(@item)
  end
end


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

# Item
class Item
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# invoker
class UIButton
  attr_reader :command

  def initialize(command)
    @command = command
  end

  def click_button
    @command.execute
  end
end



item = Item.new('Watch')
cart = Cart.new

# pass item and cart object to the command
command = AddItemToCart.new(item, cart)

# pass command object to button class
button = UIButton.new(command)

# click button
button.click_button

# unexecute the command
command.unexecute



