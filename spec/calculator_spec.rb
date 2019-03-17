require 'calculator'
require 'menu'
require 'order'

describe Calculator do

  before(:each) do
      @dish = double('dish')
      @second_dish = double('second dish')
      @menu = Menu.new
      @menu.add_item(@dish, 5)
      @menu.add_item(@second_dish, 4)
      @order = Order.new(@menu)
  end

  describe '#check_price' do
    it 'calculates the price of a dish given quantity' do
      @order.add_to_order(@dish, 10, 2)
      expect(@order.current_order).to include([@dish, 10, 2])
    end
  end
end
