require 'order'
require 'menu'

describe Order do

  before(:each) do
    @order = Order.new
    @dish = double("dish")
    @price = double("price")
    @quantity = double("quantity")
    @menu = Menu.new


  end

  it 'starts with an empty order' do
    expect(@order.current_order).to eq([])
  end

  describe '#add_to_order' do
    it 'adds a dish, price & quantity to your order' do
      @menu.add_item(@dish, 5)
      new_order = Order.new(@menu)
      new_order.add_to_order(@dish, 10, 2)
      expect(new_order.current_order).to include([@dish, 10, 2])
    end

    it 'does not add a dish if price is wrong' do
      @menu.add_item(@dish, 5)
      new_order = Order.new(@menu)
      new_order.add_to_order(@dish, 9, 2)
      expect(new_order.current_order).not_to include([@dish, 10, 2])
    end
  end

  describe '#price_checker' do
    it "raises false if incorrect price is input" do
      @menu.add_item(@dish, 5)
      new_order = Order.new(@menu)
      new_order.add_to_order(@dish, 10, 2)
      expect(new_order.price_checker(@dish, 9, 2)).to eq(false)
    end
  end
end
