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



