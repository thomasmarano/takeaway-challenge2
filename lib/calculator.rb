class Calculator

  def check_price(menu_list, dish, quantity)
    sum = 0
    menu_list.each do |array_item|
      if array_item[dish]
        sum = calculates_price(array_item[dish], quantity)
      end
    end
    return sum
  end


  def calculates_price(price, quantity)
    return price * quantity
  end

end
