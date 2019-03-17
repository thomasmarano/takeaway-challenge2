
require_relative 'dish.rb'
require_relative 'calculator.rb'

class Menu

  attr_reader :menu_list

  def initialize(calculator = Calculator.new)
    @menu_list = []
    @dish = Dish
    @calculator = calculator
  end

  def add_item(dish, price)
    @menu_list.push(@dish.new(dish, price).correct_format)
  end

  def view_menu
    convert_each_item
  end

  # def confirm_price(dish, quantity)
  #   @calculator.check_price(@menu_list, dish, quantity)
  # end


  private

  def convert_each_item
    @menu_list.each do |array_item|
      array_item.each do |key, value|
        text_inserter(key, value)
      end
    end
  end

  def text_inserter(key, value)
    puts "Dish of #{key} costs #{value}"
  end
end
