
require_relative 'dish.rb'

class Menu

  attr_reader :menu_list

  def initialize
    @menu_list = []
  end

  def add_item(dish, price)
    @menu_list.push(Dish.new(dish, price).correct_format)
  end

  def view_menu
    convert_each_item
  end

  def confirm_price(dish, quantity)
    sum = 0
    @menu_list.each do |array_item|
      if array_item[dish]
        sum = array_item[dish] * quantity
      end
    end
    return sum
  end


  private

  def convert_each_item
    @menu_list.each do |array_item|
      array_item.each do |key, value|
        puts "Dish of #{key} costs #{value}"
      end
    end
  end
end
