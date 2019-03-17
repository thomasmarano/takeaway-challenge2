require_relative 'menu'
require_relative 'calculator'

class Order

  attr_reader :current_order

  def initialize(menu = Menu.new, calculator = Calculator.new)
    @current_order = []
    @menu = menu
    @calculator = calculator
  end

  def add_to_order(dish, price, quantity)
    if price_checker(dish, price, quantity)
      @current_order.push([dish, price, quantity])
    else
      return 'You input the incorrect sum'
    end
  end

  def price_checker(dish, price, quantity)
    @calculator.check_price(@menu.menu_list, dish, quantity) == price
    # @menu.confirm_price(dish, quantity) == price
  end


end
