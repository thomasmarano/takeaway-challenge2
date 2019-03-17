require 'menu'

describe Menu do

  before(:each) do
    @menu = Menu.new
    @dish = double("dish")
    @second_dish = double("second dish")
    @price = double("price")
  end

  it 'starts as an empty array' do
    expect(@menu.menu_list).to eq([])
  end

  describe '#add_item' do
    it 'lets you add a dish to the menu' do
      @menu.add_item(@dish, @price)
      expect(@menu.menu_list).to include({@dish => @price})
    end
  end

  describe '#view_menu' do
    it 'lets you view the menu items' do
      @menu.add_item(@dish, @price)
      expect{@menu.view_menu}.to output("Dish of #{@dish} costs #{@price}\n").to_stdout
    end
  end

end
