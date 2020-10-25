require_relative 'add_item_to_cart.rb'
require_relative 'cart.rb'
require_relative 'item.rb'
require_relative 'ui_button.rb'

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



# In one of our projects, we have the following requirement:

# Create a record in DB.
# Call a service to update a related record.
# Call another service to log a ticket.
# To perform this in a transactional manner, each operation is implemented as a command with undo operation.
# At the end of each step, the command is pushed onto a stack. If the operation fails at some step,
# then we pop the commands from the stack and call undo operation on each of the command popped out.
# The undo operation of each step is defined in that command implementation to reverse the earlier command.execute().

# Hope this helps.


