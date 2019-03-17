require_relative 'menu'

class Order

  attr_reader :current_order

  def initialize(menu = Menu.new)
    @current_order = []
    @menu = menu
  end

  def add_to_order(dish, price, quantity)
    if price_checker(dish, price, quantity)
      @current_order.push([dish, price, quantity])
    else
      puts 'You input the incorrect sum'
    end
  end

  def price_checker(dish, price, quantity)
    @menu.confirm_price(dish, quantity) == price
  end

end
