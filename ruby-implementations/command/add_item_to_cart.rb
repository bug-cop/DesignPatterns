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
