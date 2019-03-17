class Dish

  attr_reader :name, :price, :correct_format

  def initialize(name, price)
    @name = name
    @price = price
    @correct_format = {@name => @price}
  end

  def adjust_price(new_price)
    @price = new_price
  end

  def adjust_name(new_name)
    @name = new_name
  end

end
