class Tax
  attr_accessor :rate
end  

class PricedObject <Tax
  def total_price
    price * Tax.rate
  end 
end

class Product < PricedObject
  attr_accessor :price

end  

class OrderedItem < PricedObject
  attr_accessor :unit_price, :volume

  #税抜き単価 * 数値
  def price
    unit_price * volume
  end

end  