require 'dish'

describe Dish do

  before(:each) do
    @dish_name = double("dish_name")
    @new_dish_name = double("new dish name")
    @price = double("price")
    @new_price = double("new price")
    @dish = Dish.new(@dish_name, @price)
  end

  it 'creates a new dish with name and price' do
    expect(@dish.price).to eq(@price)
    expect(@dish.name).to eq(@dish_name)
  end

  describe '#adjust_price' do
    it 'lets you modify price' do
      expect{@dish.adjust_price(@new_price)}.to change{@dish.price}.from(@price).to(@new_price)
    end
  end

  describe '#adjust_name' do
    it 'lets you modify dish name' do
      expect{@dish.adjust_name(@new_dish_name)}.to change{@dish.name}.from(@dish_name).to(@new_dish_name)
    end
  end

end
