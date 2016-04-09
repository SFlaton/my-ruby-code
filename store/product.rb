class Product
  attr_accessor :name, :description, :price, :id, :amount
  def initialize(name, description, price, id, amount)
    @name = name
    @description = description
    @price = price
    @id = id
    @amount = amount
  end

  def describe
    "#{@name}: €#{@price}"
  end

  def price_list
  "#{@price}"
  end
end
